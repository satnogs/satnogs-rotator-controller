#include "SoftI2CMaster.h"
#include <Wire.h>

/* H-bridge defines */
#define PWM1M1 5
#define PWM2M1 6
#define PWM1M2 9
#define PWM2M2 10
/* Limits for control signal */
#define outMax 127
#define outMin 0
/* Encoder defines */
#define sda_pin 16
#define scl_pin 14
#define as5601_adr 0x36
#define raw_ang_high 0x0c
#define raw_ang_low 0x0d
#define status_reg 0x0b
/* Ratio of worm gear */
#define RATIO 30
/* Maximum Angle for homing scanning */
#define MAX_AZ_ANGLE 110
#define MAX_EL_ANGLE 370
/* Homing switch */
#define HOME_AZ 4
#define HOME_EL 7
/* Change to LOW according to Home sensor */
#define DEFAULT_HOME_STATE 1
/* Time to disable the motors in millisecond */
#define T_DELAY 60000
/* PIN for Enable or Disable Stepper Motors */
#define EN 8
/* Serial configuration */
#define BufferSize 256
#define BaudRate 19200
/*Global Variables*/
unsigned long t_DIS = 0; /*time to disable the Motors*/
/* angle offset */
double az_angle_offset = 0;
double el_angle_offset = 0;
/* Encoder */
SoftI2CMaster i2c_soft = SoftI2CMaster(scl_pin, sda_pin, 1);

void setup()
{
  /* H-bridge */
  pinMode(OUTPUT, PWM1M1);
  pinMode(OUTPUT, PWM2M1);
  pinMode(OUTPUT, PWM1M2);
  pinMode(OUTPUT, PWM2M2);
  /* Encoder */
  i2c_soft.begin();
  Wire.begin();
  /* Homing switch */
  pinMode(HOME_AZ, INPUT_PULLUP);
  pinMode(HOME_EL, INPUT_PULLUP);
  /* Serial Communication */
  Serial.begin(BaudRate);
  /* Enable Motors */
  pinMode(EN, OUTPUT);
  digitalWrite(EN, HIGH);
  /* RS485 */
  //Serial1.begin(9600);
  //pinMode(A3, OUTPUT);
  //digitalWrite(A3, HIGH);
  /* Initial Homing */
  Homing(-MAX_AZ_ANGLE, -MAX_EL_ANGLE, true);
}

void loop()
{
  double *set_point;
  /* Read commands from serial */
  set_point = cmd_proc();
  /* Move Motor */
  dc_move(set_point);
}

/* EasyComm 2 Protocol */
double * cmd_proc()
{
  static double set_point[] = {0, 0};
  /* Serial */
  char buffer[BufferSize];
  char incomingByte;
  char *Data = buffer;
  char *rawData;
  static int BufferCnt = 0;
  char data[100];
  /* Read from serial */
  while (Serial.available() > 0)
  {
    incomingByte = Serial.read();
    /* New data */
    if (incomingByte == '\n')
    {
      buffer[BufferCnt] = 0;
      if (buffer[0] == 'A' && buffer[1] == 'Z')
      {
        if (buffer[2] == ' ' && buffer[3] == 'E' && buffer[4] == 'L')
        {
          double *pos;
          pos = get_position();
          /* Get position */
          Serial.print("AZ");
          Serial.print(pos[0], 1);
          Serial.print(" ");
          Serial.print("EL");
          Serial.println(pos[1], 1);
        }
        else
        {
          /* Get the absolute value of angle */
          rawData = strtok_r(Data, " " , &Data);
          strncpy(data, rawData + 2, 10);
          if (isNumber(data))
            set_point[0] = atof(data);
          /* Get the absolute value of angle */
          rawData = strtok_r(Data, " " , &Data);
          if (rawData[0] == 'E' && rawData[1] == 'L')
          {
            strncpy(data, rawData + 2, 10);
            if (isNumber(data))
              set_point[1] = atof(data);
          }
        }
      }
      /* Stop Moving */
      else if (buffer[0] == 'S' && buffer[1] == 'A' && buffer[2] == ' ' && buffer[3] == 'S' && buffer[4] == 'E')
      {
        double *pos;
        pos = get_position();
        /* Get position */
        Serial.print("AZ");
        Serial.print(pos[0], 1);
        Serial.print(" ");
        Serial.print("EL");
        Serial.println(pos[1], 1);
        set_point[0] = pos[0];
        set_point[1] = pos[1];
      }
      /* Reset the rotator */
      else if (buffer[0] == 'R' && buffer[1] == 'E' && buffer[2] == 'S' && buffer[3] == 'E' && buffer[4] == 'T')
      {
        double *pos;
        pos = get_position();
        /* Get position */
        Serial.print("AZ");
        Serial.print(pos[0], 1);
        Serial.print(" ");
        Serial.print("EL");
        Serial.println(pos[1], 1);
        /* Move to initial position */
        Homing(-MAX_AZ_ANGLE, -MAX_EL_ANGLE, false);
        set_point[0] = 0;
        set_point[1] = 0;
      }
      BufferCnt = 0;
    }
    /* Fill the buffer with incoming data */
    else {
      buffer[BufferCnt] = incomingByte;
      BufferCnt++;
    }
  }
  return set_point;
}

/* Homing Function */
void Homing(double AZangle, double ELangle, bool Init)
{
  int value_Home_AZ = DEFAULT_HOME_STATE;
  int value_Home_EL = DEFAULT_HOME_STATE;
  boolean isHome_AZ = false;
  boolean isHome_EL = false;
  double *zero_angle;
  double *curr_angle;
  double set_point[] = {0, 0};

  zero_angle = get_position();

  if (zero_angle[0] > 0)
    set_point[0] = AZangle;
  else
    set_point[0] = -AZangle;

  if (zero_angle[1] > 0)
    set_point[1] = ELangle;
  else
    set_point[1] = -ELangle;

  while (isHome_AZ == false || isHome_EL == false)
  {
    dc_move(set_point);
    value_Home_AZ = digitalRead(HOME_AZ);
    value_Home_EL = digitalRead(HOME_EL);

    /* Change to LOW according to Home sensor */
    if (value_Home_AZ == DEFAULT_HOME_STATE)
    {
      isHome_AZ = true;
      curr_angle = get_position();
      set_point[0] = 0;
      if (Init)
        az_angle_offset = curr_angle[0];
    }
    if (value_Home_EL == DEFAULT_HOME_STATE)
    {
      isHome_EL = true;
      curr_angle = get_position();
      set_point[1] = 0;
      if (Init)
        el_angle_offset = curr_angle[1];
    }
    curr_angle = get_position();
    if ((abs(curr_angle[0] - zero_angle[0]) > MAX_AZ_ANGLE && !isHome_AZ) || (abs(curr_angle[1] - zero_angle[1]) > MAX_EL_ANGLE && !isHome_EL))
    {
      /* set error */
      break;
    }
  }
}

void dc_move(double set_point[])
{
  static double u[] = {0, 0};
  static double *curr_pos;
  static double prev_pos[] = {0, 0};
  static double error[] = {0, 0};
  static double Iterm[] = {0, 0};
  static double Pterm[] = {0, 0};
  static double Dterm[] = {0, 0};
  double Kp = 200;
  double Ki = 1;
  double Kd = 0;
  double dt = 0.001; // calculate

  curr_pos = get_position();
  error[0] = set_point[0] - curr_pos[0];
  error[1] = set_point[1] - curr_pos[1];

  Pterm[0] = Kp * error[0];
  Pterm[1] = Kp * error[1];

  Iterm[0] += Ki * error[0] * dt;
  Iterm[1] += Ki * error[1] * dt;
  if (Iterm[0] > outMax) Iterm[0] = outMax;
  else if (Iterm[0] < outMin) Iterm[0] = outMin;
  if (Iterm[1] > outMax) Iterm[1] = outMax;
  else if (Iterm[1] < outMin) Iterm[1] = outMin;

  Dterm[0] = Kd * (curr_pos[0] - prev_pos[0]) / dt;
  prev_pos[0] = curr_pos[0];
  Dterm[1] = Kd * (curr_pos[1] - prev_pos[1]) / dt;
  prev_pos[1] = curr_pos[1];

  u[0] = Pterm[0] + Iterm[0] + Dterm[0];
  u[1] = Pterm[1] + Iterm[1] + Dterm[1];

  if (u[0] >= 0)
  {
    if (u[0] > outMax)
      u[0] = outMax;
    analogWrite(PWM1M1, u[0]);
    analogWrite(PWM2M1, 0);
  }
  else
  {
    u[0] = -u[0];
    if ( u[0] > outMax)
      u[0] = outMax;
    analogWrite(PWM1M1, 0);
    analogWrite(PWM2M1, u[0]);
  }

  if (u[1] >= 0)
  {
    if (u[1] > outMax)
      u[1] = outMax;
    analogWrite(PWM1M2, u[1]);
    analogWrite(PWM2M2, 0);
  }
  else
  {
    u[1] = -u[1];
    if ( u[1] > outMax)
      u[1] = outMax;
    analogWrite(PWM1M2, 0);
    analogWrite(PWM2M2, u[1]);
  }
}

/* Read Encoders */
double * get_position()
{
  int low_raw, high_raw, status_val;
  double raw_pos = 0;
  double delta_raw_pos = 0;
  static double raw_prev_pos[] = {0, 0};
  static double real_pos[] = {0, 0};
  static int n[] = {0, 0};

  /* Axis 1*/
  /* Read Raw Angle Low Byte */
  Wire.beginTransmission(as5601_adr);
  Wire.write(raw_ang_low);
  Wire.endTransmission();
  Wire.requestFrom(as5601_adr, 1);
  while(Wire.available() == 0);
  low_raw = Wire.read();
  /* Read Raw Angle High Byte */
  Wire.beginTransmission(as5601_adr);
  Wire.write(raw_ang_high);
  Wire.endTransmission();
  Wire.requestFrom(as5601_adr, 1);
  while(Wire.available() == 0);
  high_raw = Wire.read();
  high_raw = high_raw << 8;
  high_raw = high_raw | low_raw;
  /* Read Status Bits */
  Wire.beginTransmission(as5601_adr);
  Wire.write(status_reg);
  Wire.endTransmission();
  Wire.requestFrom(as5601_adr, 1);
  while(Wire.available() == 0);
  status_val = Wire.read();
  /* Check the status register */
  if ((status_val & 0x20) && !(status_val & 0x10) && !(status_val & 0x08))
  {
    if (high_raw >= 0)
    {
      raw_pos = (double)high_raw*0.0879;
      delta_raw_pos = raw_prev_pos[0] - raw_pos;
      if (delta_raw_pos > 180)
        n[0]++;
      else if (delta_raw_pos < -180)
        n[0]--;
      real_pos[0] = ((raw_pos + 360 * n[0]) / RATIO) - az_angle_offset;
      raw_prev_pos[0] = raw_pos;
    }
    else
      ; /* set error  */
  }
  else
    ; /* set error */

  /* Axis 2 */
  /* Read Raw Angle Low Byte */
  i2c_soft.beginTransmission(as5601_adr);
  i2c_soft.write(raw_ang_low);
  i2c_soft.endTransmission();
  i2c_soft.requestFrom(as5601_adr);
  low_raw = i2c_soft.readLast();
  i2c_soft.endTransmission();
  /* Read Raw Angle High Byte */
  i2c_soft.beginTransmission(as5601_adr);
  i2c_soft.write(raw_ang_high);
  i2c_soft.endTransmission();
  i2c_soft.requestFrom(as5601_adr);
  high_raw = i2c_soft.readLast();
  i2c_soft.endTransmission();
  high_raw = high_raw << 8;
  high_raw = high_raw | low_raw;
  /* Read Status Bits */
  i2c_soft.beginTransmission(as5601_adr);
  i2c_soft.write(status_reg);
  i2c_soft.endTransmission();
  i2c_soft.requestFrom(as5601_adr);
  status_val = i2c_soft.readLast();
  i2c_soft.endTransmission();
  /* Check the status register */
  if ((status_val & 0x20) && !(status_val & 0x10) && !(status_val & 0x08))
  {
    if (high_raw >= 0)
    {
      raw_pos = (double)high_raw*0.0879;
      delta_raw_pos = raw_prev_pos[1] - raw_pos;
      if (delta_raw_pos > 180)
        n[1]++;
      else if (delta_raw_pos < -180)
        n[1]--;
      real_pos[1] = ((raw_pos + 360 * n[1]) / RATIO) - el_angle_offset;
      raw_prev_pos[1] = raw_pos;
    }
    else
      ; /* set error  */
  }
  else
    ; /* set error */

  return real_pos;
}

/* check if is argument in number */
boolean isNumber(char *input)
{
  for (int i = 0; input[i] != '\0'; i++)
  {
    if (isalpha(input[i]))
      return false;
  }
  return true;
}

