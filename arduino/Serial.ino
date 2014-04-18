void cmd_proc()
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
        double cmdAz = atof(data);
        
        stepAz = path(cmdAz);        
      }
      else if (buffer[0] == 'E' && buffer[1] == 'L')
      {
        strncpy(data, buffer+2, 10);
        double cmdEl = atof(data);
        stepEl = deg2step(cmdEl)-stepPosEl;
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
      
      //Reset time
      t1 = 0;      
    }
    /*Fill the buffer with incoming data*/
    else {
      buffer[counter] = incomingByte;
      counter++;
    }
  }
}
