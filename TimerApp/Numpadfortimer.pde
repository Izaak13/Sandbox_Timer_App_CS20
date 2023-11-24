/* Program notes: Geometry is portrait
 Demonstrates numpad as Nested FOR loops.
 Start with width, then error check height.
 */
//Global Variables
//CAUTION, decimals don't work in integers, not floats or doubles
//
void numpadSetup() {
  display();
  population();
  textSetup();
  } //End Setup
  
  //
  void numpadDraw() {
    fill(#E36B1B);
    stroke(#FF8F05);
    numPadRects();
    String one="1", two="2", three="3", four="4", five="5", six="6", seven="7", eight="8", nine="9", zero="0";
    String dzero="DEL", enter="00";
    fill(#D82323);
    textDraw(navy, CENTER, CENTER, font, one, x[0], y[0], widthSquare, heightSquare);
    textDraw(navy, CENTER, CENTER, font, two, x[1], y[0], widthSquare, heightSquare);
    textDraw(navy, CENTER, CENTER, font, three, x[2], y[0], widthSquare, heightSquare);
    textDraw(navy, CENTER, CENTER, font, four, x[0], y[1], widthSquare, heightSquare);
    textDraw(navy, CENTER, CENTER, font, five, x[1], y[1], widthSquare, heightSquare);
    textDraw(navy, CENTER, CENTER, font, six, x[2], y[1], widthSquare, heightSquare);
    textDraw(navy, CENTER, CENTER, font, seven, x[0], y[2], widthSquare, heightSquare);
    textDraw(navy, CENTER, CENTER, font, eight, x[1], y[2], widthSquare, heightSquare);
    textDraw(navy, CENTER, CENTER, font, nine, x[2], y[2], widthSquare, heightSquare);
    textDraw(navy, CENTER, CENTER, font, dzero, x[0], y[3], widthSquare, heightSquare);
    textDraw(navy, CENTER, CENTER, font, zero, x[1], y[3], widthSquare, heightSquare);
    textDraw(navy, CENTER, CENTER, font, enter, x[2], y[3], widthSquare, heightSquare);
    //
    textDrawNew(white, CENTER, CENTER, font, String.valueOf(minutes)+colon+String.valueOf(seconds), appWidth*0, appHeight*1/7, appWidth, heightSquare);
    
  } //End draw
  //
  //void mousePressed() {
  
  //mouseX> && mouseX< && mouseY> && mouseY<
   //x0, y0, widthSquare, heightSquare
   /*
   if ( mouseX>x0 && mouseX<x0+widthSquare && mouseY>y0 && mouseY<y0+widthSquare) println("1");
   if ( mouseX>x1 && mouseX<x1+widthSquare && mouseY>y0 && mouseY<y0+widthSquare) println("2");
   if ( mouseX>x2 && mouseX<x2+widthSquare && mouseY>y0 && mouseY<y0+widthSquare) println("3");
   if ( mouseX>x0 && mouseX<x0+widthSquare && mouseY>y1 && mouseY<y1+widthSquare) println("4");
   if ( mouseX>x1 && mouseX<x1+widthSquare && mouseY>y1 && mouseY<y1+widthSquare) println("5");
   if ( mouseX>x2 && mouseX<x2+widthSquare && mouseY>y1 && mouseY<y1+widthSquare) println("6");
   if ( mouseX>x0 && mouseX<x0+widthSquare && mouseY>y2 && mouseY<y2+widthSquare) println("7");
   if ( mouseX>x1 && mouseX<x1+widthSquare && mouseY>y2 && mouseY<y2+widthSquare) println("8");
   if ( mouseX>x2 && mouseX<x2+widthSquare && mouseY>y2 && mouseY<y2+widthSquare) println("9");
   if ( mouseX>x0 && mouseX<x0+widthSquare && mouseY>y3 && mouseY<y3+widthSquare) println("00");
   if ( mouseX>x1 && mouseX<x1+widthSquare && mouseY>y3 && mouseY<y3+widthSquare) println("0");
   if ( mouseX>x2 && mouseX<x2+widthSquare && mouseY>y3 && mouseY<y3+widthSquare) println("ENTER");*/
//  } //End mousepressed
  //
  //void keyPressed() {
//  } //End keypressed
  //
  //End Main Program
