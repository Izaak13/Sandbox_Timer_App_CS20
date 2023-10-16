/* Program notes: Geometry is portrait
 Demonstrates numpad as Nested FOR loops.
 Start with width, then error check height.
 */
//Global Variables
//CAUTION, decimals don't work in integers, not floats or doubles
//
void numpadSetup() {
      size (400, 600);
  display();
  population();
  textSetup();
  } //End Setup
  
  //
  void numpadDraw() {
    fill(#E36B1B);
    stroke(#FF8F05);
    numPadRects();
    String s1="1", s2="2";
    fill(#D82323);
    for(int i=0; i<numPadColumns; i++) {
      for(int j=0; j<numPadRows-2; j++) {
        textDraw(navy, CENTER, CENTER, font, String j*3+i+1, x[0], y[0], widthSquare, heightSquare);
      }
    }
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