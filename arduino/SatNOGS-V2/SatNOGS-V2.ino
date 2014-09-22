#include <string.h>
#include <stdlib.h>
#include <math.h>
#include <AccelStepper.h>

#define DIR_AZ 18
#define STEP_AZ 10
#define DIR_EL 6
#define STEP_EL 7

#define MS1 9
#define EN 8

#define SPR 200 //Step Per Revolution
#define RATIO 60 //Gear ratio
#define T_DEALY 20000 //Time to disable the motors

/*Global Variables*/
unsigned long t_DIS = 0; //time to disable the Motors
/*Define a stepper and the pins it will use*/
AccelStepper AZstepper(1, STEP_AZ, DIR_AZ);
AccelStepper ELstepper(1, STEP_EL, DIR_EL);


void setup()
{  
  /*Change these to suit your stepper if you want*/
  AZstepper.setMaxSpeed(400);
  AZstepper.setAcceleration(100);
  
  /*Change these to suit your stepper if you want*/
  ELstepper.setMaxSpeed(400);
  ELstepper.setAcceleration(100);
  
  /*Enable Motors*/
  pinMode(EN, OUTPUT);
  digitalWrite(EN, LOW);
  /*Step size*/
  pinMode(MS1, OUTPUT);
  digitalWrite(MS1, LOW); //Full step
  /*Serial Communication*/
  Serial.begin(19200);
}

void loop()
{ 
  /*Define the steps*/
  static int AZstep = 0;
  static int ELstep = 0;
  
  /*Time Check*/
  if (t_DIS == 0)
    t_DIS = millis();
  
  /*Disable Motors*/
  if (AZstep == AZstepper.currentPosition() && ELstep == ELstepper.currentPosition() && millis()-t_DIS > T_DEALY)
    digitalWrite(EN, HIGH);
  /*Enable Motors*/
  else
    digitalWrite(EN, LOW);
    
  /*Read the steps from serial*/
  cmd_proc(AZstep, ELstep);
  /*Move the Azimuth & Elevation Motor*/
  stepper_move(AZstep, ELstep);
}

/*EasyComm 2 Protocol & Calculate the steps*/
void cmd_proc(int &stepAz, int &stepEl)
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
        stepAz = deg2step(angleAz);
      }
      else if (buffer[0] == 'E' && buffer[1] == 'L')
      {
        strncpy(data, buffer+2, 10);
        /*Get the absolute value of angle*/
        double angleEl = atof(data);
        /*Calculate the steps*/
        stepEl = deg2step(angleEl);
      }
      else if (buffer[0] == 'S' && buffer[1] == 'A')
      {
        stepAz = AZstepper.currentPosition();
      }
      else if (buffer[0] == 'S' && buffer[1] == 'E')
      {
        stepEl = ELstepper.currentPosition();;
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
void stepper_move(int stepAz, int stepEl)
{
  AZstepper.moveTo(stepAz);
  ELstepper.moveTo(stepEl);
    
  AZstepper.run();
  ELstepper.run();
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