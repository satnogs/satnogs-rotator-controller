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

int deg2step(double deg)
{
  return(60*SPD*deg/360);
}

float step2deg(int Step)
{
  return(360*Step/(SPD*60));
}
