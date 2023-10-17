int counter, enteredTime;
//
void timeSetup() {
  enteredTime = 13; //variable should be from void draw, entered in by the numpad.
  
}//end setup
//
void timeDraw() {
  counter++;
  if ( counter%60 == 0 ) println(enteredTime--);
}
