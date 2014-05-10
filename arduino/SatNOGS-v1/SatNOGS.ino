#include <string.h>
#include <stdlib.h>
#include <math.h>

#define DIR_AZ 8
#define STEP_AZ 9
#define EN_AZ 7

#define DIR_EL 10
#define STEP_EL 11
#define EN_EL 12

#define SPD 200 //step per degree
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
  pinMode(EN_AZ, OUTPUT);
  digitalWrite(EN_AZ, LOW);
  digitalWrite(DIR_AZ, LOW);
  
  pinMode(DIR_EL, OUTPUT);
  pinMode(STEP_EL, OUTPUT);
  pinMode(EN_EL, OUTPUT);
  digitalWrite(EN_EL, LOW);
  digitalWrite(DIR_EL, LOW);
  
  Serial.begin(19200);
}

void loop()
{   
  /*Time Check*/
  if (t1 == 0)
    t1 = millis();
  if (stepAz == 0 && stepEl == 0 && millis()-t1 > T_DEALY)
  {
    digitalWrite(EN_AZ, HIGH);
    digitalWrite(EN_EL, HIGH);
  }
  else
  {
    digitalWrite(EN_AZ, LOW);
    digitalWrite(EN_EL, LOW);
  }  
  
  cmd_proc();
  
  stepper_move();
}
