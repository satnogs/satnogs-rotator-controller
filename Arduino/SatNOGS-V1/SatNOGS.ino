#include <string.h>
#include <stdlib.h>
#include <math.h>

#define DIR_AZ 5
#define STEP_AZ 4

#define DIR_EL 6
#define STEP_EL 7

#define MS1 9
#define EN 8

#define SPR 200 //step per revolution
#define T_DEALY 10000
#define T_STEPPER 1

int stepPosAz = 0;
int stepAz = 0;
int stepPosEl = 0;
int stepEl = 0;
long t1 = 0;


void setup()
{
  pinMode(DIR_AZ, OUTPUT);
  pinMode(STEP_AZ, OUTPUT);
  digitalWrite(EN_AZ, LOW);
  digitalWrite(DIR_AZ, LOW);
  
  pinMode(DIR_EL, OUTPUT);
  pinMode(STEP_EL, OUTPUT);
  digitalWrite(EN_EL, LOW);
  digitalWrite(DIR_EL, LOW);
  /* Enable/Disable Motors*/
  pinMode(EN, OUTPUT);
  digitalWrite(EN, HIGH);
  /* Step size */
  pinMode(MS1, OUTPUT);
  digitalWrite(MS1, LOW); //Full step
 
  Serial.begin(19200);
}

void loop()
{   
  /*Time Check*/
  if (t1 == 0)
    t1 = millis();
  /*Disable Motors*/
  if (stepAz == 0 && stepEl == 0 && millis()-t1 > T_DEALY)
    digitalWrite(EN, HIGH);
  /*Enable Motors*/
  else
    digitalWrite(EN, LOW);
  
  cmd_proc();
  
  stepper_move();
}
