int counter, enteredTime, displayTime, lastTime, seconds, minutes, hours;
String colon=":";
String timesUp = "TIME'S UP!";
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
  if ( counter%48 == 0 ) println(seconds--);
  }
  else
  {
    textDrawNew(red, CENTER, CENTER, font, timesUp, appWidth*0, appHeight*1/2, appWidth, appHeight*1/5);
  }
  }
  if (seconds<0 && minutes > 0)
  {
    seconds+=60;
    minutes--;
  }
  if (seconds<0 && hours > 0)
  {
    seconds+=60;
    hours--;
    minutes+=59;
  }
  if (minutes<0 && hours > 0)
  {
    minutes+=60;
    hours--;
  }
}
