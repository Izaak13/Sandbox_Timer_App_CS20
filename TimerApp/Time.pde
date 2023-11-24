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
  counter++;
  if ( counter%60 == 0 ) println(enteredTime--);
  }
}
