int counter, enteredTime, displayTime, lastTime, seconds, minutes, hours;
String colon=":";
boolean time=false;
//
void timeSetup() {
  enteredTime = 0; //variable should be from void draw, entered in by the numpad.
  
}//end setup
//
void timeDraw() {
  if (time==true) {
    if (seconds > 0 || minutes>0 || hours>0 )
    {
  counter++;
  if ( counter%60 == 0 ) println(seconds--);
  }
  }
  if (seconds<0 && minutes > 0)
  {
    seconds+=60;
    minutes--;
  }
  if (minutes<0 && hours > 0)
  {
    minutes+=60;
    hours--;
  }
}
