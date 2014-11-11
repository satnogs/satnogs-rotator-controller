#include <string.h>
#include <stdlib.h>
#include <math.h>

#define DIR_AZ 18
#define STEP_AZ 10

#define DIR_EL 6
#define STEP_EL 7

#define MS1 9
#define EN 8

#define SPR 200 //Step Per Revolution
#define RATIO 60 //Gear ratio
#define T_DEALY 10000 //Time to disable the motors
#define T_STEPPER 1000 //2*T_STEPPER is the period of pulses

/*Global Variables*/
long t_DIS = 0; //time to disable the Motors

void setup()
{
  /*Define the Stepper drivers PIN's*/
  pinMode(DIR_AZ, OUTPUT);
  pinMode(STEP_AZ, OUTPUT);  
  pinMode(DIR_EL, OUTPUT);
  pinMode(STEP_EL, OUTPUT);
  digitalWrite(STEP_AZ, LOW);
  digitalWrite(DIR_AZ, LOW);
  digitalWrite(STEP_EL, LOW);
  digitalWrite(DIR_EL, LOW);
  /*Enable Motors*/
  pinMode(EN, OUTPUT);
  digitalWrite(EN, LOW);
  /*Step size */
  pinMode(MS1, OUTPUT);
  digitalWrite(MS1, LOW); //Full step
 
  Serial.begin(19200);
}

void loop()
{ 
  /*Define the steps*/
  static int AZstep = 0;
  static int ELstep = 0;
  /*Define the steps from the start of motion*/
  static int AZstepPos = 0;
  static int ELstepPos = 0;
  
  /*Time Check*/
  if (t_DIS == 0)
    t_DIS = millis();
  /*Disable Motors*/
  if (AZstep == 0 && ELstep == 0 && millis()-t_DIS > T_DEALY)
    digitalWrite(EN, HIGH);
  /*Enable Motors*/
  else
    digitalWrite(EN, LOW);
  
  /*Read the steps from serial*/
  cmd_proc(AZstep, ELstep, AZstepPos, AZstepPos);
  /*Move the Azimuth & Elevation Motor*/
  stepper_move(AZstep, ELstep, AZstepPos, ELstepPos);
  Serial.print(AZstepPos);Serial.print("\t");
  Serial.println(AZstep);
}

/*EasyComm 2 Protocol & Calculate the steps*/
void cmd_proc(int &stepAz, int &stepEl, int stepPosAz, int stepPosEl)
{
  /*Serial*/
  static char buffer[256];
  char incomingByte;
  static int counter=0;
  char data[100];
  
  /*Read from serial*/
  while (Serial.available() > 0)
  {
    incomingByte = Serial.read();
    /*new data*/
    if (incomingByte == '\n' || incomingByte == ' ' || incomingByte == '\r')
    {
      buffer[counter]=0;
      if (buffer[0] == 'A' && buffer[1] == 'Z')
      {
        strncpy(data, buffer+2, 100);
        /*Get the absolute value of angle*/
        double angleAz = atof(data);
        /*Calculate the steps*/
        stepAz = deg2step(angleAz) - stepPosAz;
      }
      else if (buffer[0] == 'E' && buffer[1] == 'L')
      {
        strncpy(data, buffer+2, 10);
        /*Get the absolute value of angle*/
        double angleEl = atof(data);
        /*Calculate the steps*/
        stepEl = deg2step(angleEl) - stepPosEl;
      }
      else if (buffer[0] == 'S' && buffer[1] == 'A')
      {
        stepAz = 0;
      }
      else if (buffer[0] == 'S' && buffer[1] == 'E')
      {
        stepEl = 0;
      }
      counter = 0;
      /*Reset the disable motor time*/
      t_DIS = 0;
    }
    /*Fill the buffer with incoming data*/
    else {
      buffer[counter] = incomingByte;
      counter++;
    }
  }
}

/*Send pulses to stepper motor drivers*/
void stepper_move(int &stepAz, int &stepEl, int &stepPosAz, int &stepPosEl)
{
  if(stepAz > 0)
  {
    digitalWrite(DIR_AZ, HIGH);
    digitalWrite(STEP_AZ, HIGH); 
    stepPosAz++;
    stepAz--;
  }
  else if(stepAz < 0)
  {
    digitalWrite(DIR_AZ, LOW);
    digitalWrite(STEP_AZ, HIGH);
    stepPosAz--;
    stepAz++;
  }

  if(stepEl > 0)
  {
    digitalWrite(DIR_EL, LOW);
    digitalWrite(STEP_EL, HIGH); 
    stepPosEl++;
    stepEl--;
  }
  else if(stepEl < 0)
  {
    digitalWrite(DIR_EL, HIGH);
    digitalWrite(STEP_EL, HIGH);
    stepPosEl--;
    stepEl++;
  }
  
  delayMicroseconds(T_STEPPER);
  digitalWrite(STEP_AZ, LOW);
  digitalWrite(STEP_EL, LOW);
  delayMicroseconds(T_STEPPER);
}

/*Convert degrees to steps*/
int deg2step(double deg)
{
  return(RATIO*SPR*deg/360);
}

/*Convert steps to degrees*/
double step2deg(int Step)
{
  return(360*Step/(SPR*RATIO));
}