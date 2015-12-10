/* H-bridge defines */
#define PWM1M1 5
#define PWM2M1 6
/* Limits for control signal */
#define outMax 255
#define outMin 0
/* Encoder defines */
#define SELECT_PIN 7
#define CLOCK_PIN 8
#define DATA_PIN 9
/* Ratio of worm gear */
#define RATIO 30
/* Maximum Angle for homing scanning */
#define MAX_AZ_ANGLE 370
/* Homing switch */
#define HOME_AZ 2
/* Change to LOW according to Home sensor */
#define DEFAULT_HOME_STATE HIGH
/* Time to disable the motors in millisecond */
#define T_DELAY 60000
/* PIN for Enable or Disable Stepper Motors */
#define EN 4
/* Serial configuration */
#define BufferSize 256
#define BaudRate 19200
/*Global Variables*/
unsigned long t_DIS = 0; /*time to disable the Motors*/
/* angle offset */
double az_angle_offset = 0;

void setup()
{
  /* H-bridge */
  pinMode(OUTPUT, PWM1M1);
  pinMode(OUTPUT, PWM2M1);
  /* Encoder */
  pinMode(DATA_PIN, INPUT);
  pinMode(CLOCK_PIN, OUTPUT);
  pinMode(SELECT_PIN, OUTPUT);
  digitalWrite(CLOCK_PIN, HIGH);
  digitalWrite(SELECT_PIN, HIGH);
  /* Homing switch */
  pinMode(HOME_AZ, INPUT_PULLUP);
  /* Serial Communication */
  Serial.begin(BaudRate);
  /* Initial Homing */
  Homing(-MAX_AZ_ANGLE, true);
  /* Enable Motors */
  pinMode(EN, OUTPUT);
  digitalWrite(EN, HIGH);
}

void loop()
{
  static double AZangle = 0;

  /* Read commands from serial */
  cmd_proc(AZangle);
  /* Move Motor */
  dc_move(AZangle);
}

/* EasyComm 2 Protocol */
void cmd_proc(double &angleAz)
{
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
          /* Get position */
          Serial.print("AZ");
          Serial.print(getposition(), 1);
          Serial.print(" ");
          Serial.print("EL");
          Serial.println(0, 1);
          Serial.println(az_angle_offset);
        }
        else
        {
          /* Get the absolute value of angle */
          rawData = strtok_r(Data, " " , &Data);
          strncpy(data, rawData+2, 10);
          if (isNumber(data))
            angleAz = atof(data);
          /* Get the absolute value of angle */
          rawData = strtok_r(Data, " " , &Data);
          if (rawData[0] == 'E' && rawData[1] == 'L')
          {
            strncpy(data, rawData+2, 10);
            if (isNumber(data))
              ;
          }
        }
      }
      /* Stop Moving */
      else if (buffer[0] == 'S' && buffer[1] == 'A' && buffer[2] == ' ' && buffer[3] == 'S' && buffer[4] == 'E')
      {
        angleAz = getposition();
        /* Get position */
        Serial.print("AZ");
        Serial.print(getposition(), 1);
        Serial.print(" ");
        Serial.print("EL");
        Serial.println(0, 1);
      }
      /* Reset the rotator */
      else if (buffer[0] == 'R' && buffer[1] == 'E' && buffer[2] == 'S' && buffer[3] == 'E' && buffer[4] == 'T')
      {
        /* Get position */
        Serial.print("AZ");
        Serial.print(getposition(), 1);
        Serial.print(" ");
        Serial.print("EL");
        Serial.println(0, 1);
        /* Move to initial position */
        Homing(-MAX_AZ_ANGLE, false);
        angleAz = 0;
      }
      BufferCnt = 0;
    }
    /* Fill the buffer with incoming data */
    else {
      buffer[BufferCnt] = incomingByte;
      BufferCnt++;
    }
  }
}

/* Homing Function */
void Homing(double AZangle, bool Init)
{
  int value_Home_AZ = DEFAULT_HOME_STATE;
  boolean isHome_AZ = false;
  double az_zero_angle = getposition();

  while(isHome_AZ == false )
  {
    dc_move(AZangle);
    value_Home_AZ = digitalRead(HOME_AZ);
    /* Change to LOW according to Home sensor */
    if (value_Home_AZ == DEFAULT_HOME_STATE)
    {
      isHome_AZ = true;
      if (Init)
        az_angle_offset = getposition();
    }
    if (abs(getposition() - az_zero_angle) > MAX_AZ_ANGLE && !isHome_AZ)
    {
      /* set error */
      break;
    }
  }
}

void dc_move(double set_point_az)
{
  static double u = 0;
  static double angle_az = 0;
  static double prev_angle_az = 0;
  static double error = 0;
  static double Iterm = 0;
  static double Pterm = 0;
  static double Dterm = 0;
  double Kp = 2000;
  double Ki = 1;
  double Kd = 0;
  double dt = 0.001;

  angle_az = getposition();
  error = set_point_az - angle_az;

  Pterm = Kp*error;

  Iterm += Ki*error*dt;
  if(Iterm > outMax) Iterm= outMax;
  else if(Iterm < outMin) Iterm= outMin;

  Dterm = Kd*(angle_az - prev_angle_az)/dt;
  prev_angle_az = angle_az;

  u = Pterm+Iterm+Dterm;

  if (u >= 0)
  {
    if (u > outMax)
      u = outMax;
    analogWrite(PWM1M1, u);
    analogWrite(PWM2M1, 0);
  }
  else
  {
    u = -u;
    if ( u > outMax)
      u = outMax;
    analogWrite(PWM1M1, 0);
    analogWrite(PWM2M1, u);
  }
}

/* get position from encoder */
double getposition()
{
  double encoder_pos;
  double delta_pos;
  double real_pos;
  static double prev_pos = 0;
  int raw_pos;
  static int n = 0;

  raw_pos = readPosition();
  if (raw_pos >= 0)
  {
    encoder_pos = ((float)raw_pos / 1024.0) * 360.0;
    delta_pos = prev_pos - encoder_pos;
    if (delta_pos > 180)
      n++;
    else if (delta_pos < -180)
      n--;
    real_pos = ((encoder_pos + 360*n)/RATIO) - az_angle_offset;
    prev_pos = encoder_pos;
  }
  else
    ; /* set error  */

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

/* Code from http://reprap.org/wiki/Magnetic_Rotary_Encoder_1.0 */

/* read the current angular position */
int readPosition()
{
  unsigned int position = 0;

  /* shift in our data */
  digitalWrite(SELECT_PIN, LOW);
  delayMicroseconds(0.5);
  byte d1 = shiftIn(DATA_PIN, CLOCK_PIN);
  byte d2 = shiftIn(DATA_PIN, CLOCK_PIN);
  digitalWrite(SELECT_PIN, HIGH);

  /* get our position variable */
  position = d1;
  position = position << 8;
  position |= d2;

  position = position >> 6;

  /* check the offset compensation flag: 1 == started up */
  if (!(d2 & B00100000))
    position = -1;

  /* check the cordic overflow flag: 1 = error */
  if (d2 & B00010000)
    position = -2;

  /* check the linearity alarm: 1 = error */
  if (d2 & B00001000)
    position = -3;

  /* check the magnet range: 11 = error */
  if ((d2 & B00000110) == B00000110)
    position = -4;

  return position;
}

/* read in a byte of data from the digital input of the board. */
byte shiftIn(byte data_pin, byte clock_pin)
{
  byte data = 0;

  for (int i=7; i>=0; i--)
  {
    digitalWrite(clock_pin, LOW);
    delayMicroseconds(0.5);
    digitalWrite(clock_pin, HIGH);
    delayMicroseconds(0.5);
    digitalWrite(clock_pin, LOW);

    byte bit = digitalRead(data_pin);
    data |= (bit << i);

  }

  return data;
}

