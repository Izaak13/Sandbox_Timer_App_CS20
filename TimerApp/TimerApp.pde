//Global Variables
int appWidth, appHeight;
Boolean windowActivated = false;
//
void setup() {
  size(2000, 2000);
  //fullscreen(); //displayWidth, displayHeight
  //OPTION: Use display width and height instead.
  appWidth = width;
  appHeight = height;
  println("Display Width", displayWidth, "Display Height", displayHeight);
  println("App Width", appWidth, "App Height", appHeight);
  //
  //Problem: Display < Canvas
  if (appWidth > displayWidth) appWidth=displayWidth;
  if (appHeight > displayHeight) appHeight=displayHeight;
  println(appWidth, appHeight);
  //Note: arithmetic will be solved but nit the CANVAS size.
  //Solution:  requires different function, note size(), i.e. fullScreen()
  //numpad fortimer
    size (400, 600);
  display();
  population();
  textSetup();
  //
  //
} //End Setup
//
void draw() {
  //if ( windowActivated == true ) splashScreen();
  //numpad draw
  fill(#E36B1B);
    stroke(#FF8F05);
    numPadRects();
    String one="1";
    fill(#D82323);
  textDraw(navy, CENTER, CENTER, font, one, x[0], y[0], widthSquare, heightSquare);
    //
} //End Draw
//
void mousePressed() {
  //first mouse click, activate window
  windowActivated = true;
  //numpad mousepressed
  for(int i=0; i<numPadColumns; i++) {
      for(int j=0; j<numPadRows-2; j++) {
          if (mouseX>x[i] && mouseX<x[i]+widthSquare && mouseY>y[j] && mouseY<y[j]+widthSquare) println(j*3+i+1);
          
      }// End for
    }//End for 
    if ( mouseX>x[0] && mouseX<x[0]+widthSquare && mouseY>y[3] && mouseY<y[3]+widthSquare) println("00");
    if ( mouseX>x[1] && mouseX<x[1]+widthSquare && mouseY>y[3] && mouseY<y[3]+widthSquare) println("0");
    if ( mouseX>x[2] && mouseX<x[2]+widthSquare && mouseY>y[3] && mouseY<y[3]+widthSquare) println("ENTER");
    //
} //End mousePressed
//
void keyPressed() {} //End keyPressed
//
//End MAIN Program
