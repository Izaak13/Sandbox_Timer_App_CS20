PFont font;
color navy=#1702A7 , white=#FFFFFF;//not night mode friendly
//
void textSetup() {
  //Fonts from OS
  String[] fontList = PFont.list(); //To list all fonts available on system
  printArray(fontList); //For listing all possible fonts to choos, then createFont
  //
  font = createFont ("Georgia", 169); //Verify font exists
  //Tools / Create Font / find font / do NOT PRESS "OK", known bug
  //
}//End text setup
//
  void textDraw( color ink, int alignX, int alignY, PFont font, String text, float rectX, float rectY, float rectWidth, float rectHeight) {
  fill( ink ); //Ink, hexadecimal
  textAlign ( alignX, alignY ); //Align X&Y
  float size = textCalculator( rectWidth, text );
  textFont(font, size); //Change the number until it fits, largest font size
  text( text, rectX, rectY, rectWidth, rectHeight );
  fill ( white ); //Default
  } //End textDraw
  
//
float textCalculator( float rectWidth, String text ) {
  float size = appWidth;
  textSize( size );
  while ( textWidth( text ) >= rectWidth ) {
  size = size * 0.99;
  textSize(size);
  //println("2. ", textWidth (text), rectWidth, size);
  }//End while
  textSize (size);
  size = textWidth (text);
  textSize (size);
  return size;
} //End Text Calculator
