#define IO1 5
#define PWM1 6
#define SENPIN 3

#define SELECT_PIN 7
#define CLOCK_PIN 8
#define DATA_PIN 9

#define RATIO 30

#define outMax 255
#define outMin 0

#define MAX_AZ_ANGLE 365 /*Maximum Angle of Azimuth for homing scanning*/
#define MAX_EL_ANGLE 365 /*Maximum Angle of Elevation for homing scanning*/

#define HOME_AZ 2 /*Homing switch for Azimuth*/
#define HOME_EL 1 /*Homing switch for Elevation*/
#define DEFAULT_HOME_STATE HIGH /*Change to LOW according to Home sensor*/

#define T_DELAY 60000 /*Time to disable the motors in millisecond*/
#define EN 8 /*PIN for Enable or Disable Stepper Motors*/

#define BufferSize 256
#define BaudRate 19200

/*Global Variables*/
unsigned long t_DIS = 0; /*time to disable the Motors*/

void setup()
{  
  pinMode(OUTPUT, IO1);
  pinMode(OUTPUT, PWM1);
  pinMode(INPUT, SENPIN);

  pinMode(DATA_PIN, INPUT);
  pinMode(CLOCK_PIN, OUTPUT);
  pinMode(SELECT_PIN, OUTPUT);

  digitalWrite(CLOCK_PIN, HIGH);
  digitalWrite(SELECT_PIN, HIGH);

  /*Homing switch*/
  pinMode(HOME_AZ, INPUT_PULLUP);
  pinMode(HOME_EL, INPUT_PULLUP);
  /*Serial Communication*/
  Serial.begin(BaudRate);
  /*Initial Homing*/
  //Homing(-MAX_AZ_ANGLE, -MAX_EL_ANGLE);
  /*Enable Motors*/
  pinMode(EN, OUTPUT);
  digitalWrite(EN, LOW);
}

void loop()
{
  /*Define the steps*/
  static double AZangle = 10;
  static double ELangle = 10;
  /*Time Check*/
  if (t_DIS == 0)
    t_DIS = millis();

  /*Disable Motors*/
  if ( AZangle == ((float)readPosition() / 1024.0) * 360 && ELangle == ((float)readPosition() / 1024.0) * 360 && millis()-t_DIS > T_DELAY)
    digitalWrite(EN, HIGH);
  /*Enable Motors*/
  else
    digitalWrite(EN, LOW);
    
  /*Read the steps from serial*/
  cmd_proc(AZangle, ELangle);
  /*Move the Azimuth & Elevation Motor*/
  dc_move(AZangle, ELangle); 
}

void dc_move(double az_angle, double el_angle)
{  
  static double u = 0;
  static double angle = 0;
  static double error = 0;
  static double Iterm = 0;
  static double Pterm = 0;
  double Kp = 1800; // 6000
  double Ki = 1; //1
  double dt = 0.001;
  
  angle = ((float)readPosition() / 1024.0) * 360;
  error = az_angle - angle;
//Serial.println(error);  
  Pterm = Kp*error;
  Iterm += (Ki*error)*dt;
  if(Iterm > outMax) Iterm= outMax;
  else if(Iterm < outMin) Iterm= outMin;

  u = map(Pterm+Iterm, -10000, 10000, outMin, outMax);

  if (u > 0)
  {
    analogWrite(IO1, u);
    analogWrite(PWM1, 0);
  }
  else if (u < 0)
  {
    analogWrite(IO1, 0);
    analogWrite(PWM1, u);
  }
    
}

/*EasyComm 2 Protocol & Calculate the steps*/
void cmd_proc(double &angleAz, double &angleEl)
{
  /*Serial*/
  char buffer[BufferSize];
  char incomingByte;
  char *Data = buffer;
  char *rawData;
  static int BufferCnt = 0;
  char data[100];
    
  /*Read from serial*/
  while (Serial.available() > 0)
  {
    incomingByte = Serial.read();
    /* XXX: Get position using custom and test code */
    if (incomingByte == '!')
    {
      /*Get position*/
      Serial.print("TM");
      Serial.print(1);
      Serial.print(" ");
      Serial.print("AZ");
      Serial.print(10*((float)readPosition() / 1024.0) * 360, 1);
      Serial.print(" ");
      Serial.print("EL");
      Serial.println(10*((float)readPosition() / 1024.0) * 360, 1);
    }
    /*new data*/
    else if (incomingByte == '\n')
    {
      buffer[BufferCnt] = 0;
      if (buffer[0] == 'A' && buffer[1] == 'Z')
      {
        if (buffer[2] == ' ' && buffer[3] == 'E' && buffer[4] == 'L')
        {
          /*Get position*/
          Serial.print("AZ");
          Serial.print(((float)readPosition() / 1024.0) * 360, 1);
          Serial.print(" ");
          Serial.print("EL");
          Serial.print(((float)readPosition() / 1024.0) * 360, 1);
          Serial.println(" ");
        }
        else
        {
          /*Get the absolute value of angle*/
          rawData = strtok_r(Data, " " , &Data);
          strncpy(data, rawData+2, 10);
          if (isNumber(data))
            angleAz = atof(data);
          /*Get the absolute value of angle*/
          rawData = strtok_r(Data, " " , &Data);
          if (rawData[0] == 'E' && rawData[1] == 'L')
          {
            strncpy(data, rawData+2, 10);
            if (isNumber(data))
              angleEl = atof(data);
          }
        }
      }
      /*Stop Moving*/
      else if (buffer[0] == 'S' && buffer[1] == 'A' && buffer[2] == ' ' && buffer[3] == 'S' && buffer[4] == 'E')
      {
        /*Get position*/
        Serial.print("AZ");
        Serial.print(((float)readPosition() / 1024.0) * 360, 1);
        Serial.print(" ");
        Serial.print("EL");
        Serial.println(((float)readPosition() / 1024.0) * 360, 1);
        angleAz = ((float)readPosition() / 1024.0) * 360;
        angleEl = ((float)readPosition() / 1024.0) * 360;
      }
      /*Reset the rotator*/
      else if (buffer[0] == 'R' && buffer[1] == 'E' && buffer[2] == 'S' && buffer[3] == 'E' && buffer[4] == 'T')
      {
        /*Get position*/
        Serial.print("AZ");
        Serial.print(((float)readPosition() / 1024.0) * 360, 1);
        Serial.print(" ");
        Serial.print("EL");
        Serial.println(((float)readPosition() / 1024.0) * 360, 1);
        /*Move the steppers to initial position*/
        Homing(-MAX_AZ_ANGLE, -MAX_EL_ANGLE);
        /*Zero the steps*/
        angleAz = 0;
        angleEl = 0;
      }      
      BufferCnt = 0;
      /*Reset the disable motor time*/
      t_DIS = 0;
    }
    /*Fill the buffer with incoming data*/
    else {
      buffer[BufferCnt] = incomingByte;
      BufferCnt++;
    }
  }
}

/*Homing Function*/
void Homing(double AZangle, double ELangle)
{
  int value_Home_AZ = DEFAULT_HOME_STATE;
  int value_Home_EL = DEFAULT_HOME_STATE;
  boolean isHome_AZ = false;
  boolean isHome_EL = false;
    
  while(isHome_AZ == false )// || isHome_EL == false)
  {
    dc_move(AZangle, ELangle);

    value_Home_AZ = digitalRead(HOME_AZ);
    value_Home_EL = digitalRead(HOME_EL);
    /*Change to LOW according to Home sensor*/
    if (value_Home_AZ == DEFAULT_HOME_STATE)
    {
      isHome_AZ = true;
    }   
    /*Change to LOW according to Home sensor*/
    if (value_Home_EL == DEFAULT_HOME_STATE)
    {
      isHome_EL = true;
    }
    if (((float)readPosition() / 1024.0) * 360 == 0 && !isHome_AZ)
    {
      error(0);
      break;
    }
    if (((float)readPosition() / 1024.0) * 360 == 0 && !isHome_EL)
    {
      error(1);
      break;
    }
  }
}

/*Error Handling*/
void error(int num_error)
{
  switch (num_error)
  {
    /*Azimuth error*/
    case (0):
      while(1)
      {
        Serial.println("AL001");
        delay(100);
      }
    /*Elevation error*/
    case (1):
      while(1)
      {
        Serial.println("AL002");
        delay(100);
      }
    default:
      while(1)
      {
        Serial.println("AL000");
        delay(100);
      }
  }
}

/*Check if is argument in number*/
boolean isNumber(char *input)
{
  for (int i = 0; input[i] != '\0'; i++)
  {
    if (isalpha(input[i]))
      return false;
  }
   return true;
}

//read the current angular position
int readPosition()
{
  unsigned int position = 0;

  //shift in our data  
  digitalWrite(SELECT_PIN, LOW);
  delayMicroseconds(0.5);
  byte d1 = shiftIn(DATA_PIN, CLOCK_PIN);
  byte d2 = shiftIn(DATA_PIN, CLOCK_PIN);
  digitalWrite(SELECT_PIN, HIGH);

  //get our position variable
  position = d1;
  position = position << 8;
  position |= d2;

  position = position >> 6;

  //check the offset compensation flag: 1 == started up
  if (!(d2 & B00100000))
    position = -1;

  //check the cordic overflow flag: 1 = error
  if (d2 & B00010000)
    position = -2;

  //check the linearity alarm: 1 = error
  if (d2 & B00001000)
    position = -3;

  //check the magnet range: 11 = error
  if ((d2 & B00000110) == B00000110)
    position = -4;

  return position;
}

//read in a byte of data from the digital input of the board.
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
