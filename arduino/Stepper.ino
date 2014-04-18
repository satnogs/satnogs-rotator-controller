void stepper_move()
{
  if(stepAz>0)
  {
    digitalWrite(DIR_AZ, HIGH);
    digitalWrite(STEP_AZ, HIGH); 
    stepPosAz++;
    stepAz--;
  }
  else if(stepAz<0)
  {
    digitalWrite(DIR_AZ, LOW);
    digitalWrite(STEP_AZ, HIGH);
    stepPosAz--;
    stepAz++;
  }

  if(stepEl>0)
  {
    digitalWrite(DIR_EL, LOW);
    digitalWrite(STEP_EL, HIGH); 
    stepPosEl++;
    stepEl--;
  }
  else if(stepEl<0)
  {
    digitalWrite(DIR_EL, HIGH);
    digitalWrite(STEP_EL, HIGH);
    stepPosEl--;
    stepEl++;
  }
  
  delay(T_STEPPER);
  digitalWrite(STEP_AZ, LOW);
  digitalWrite(STEP_EL, LOW);
  delay(T_STEPPER);

}

int path( double cmdAz)
{
  int sign = 0, stepTemp;
  double PosAz = cmdAz - step2deg(stepPosAz);
  double distAz = abs(PosAz);
      
  if (distAz < 180)
    stepAz = deg2step(PosAz);
  else
  {
    if (PosAz > 0)
      sign = -1;
    else
      sign = 1;
    stepTemp = deg2step((360-PosAz)*sign);
  }
  
  return stepTemp;
}

int deg2step(double deg)
{
  return(60*SPD*deg/360);
}

float step2deg(int Step)
{
  return(360*Step/(SPD*60));
}
