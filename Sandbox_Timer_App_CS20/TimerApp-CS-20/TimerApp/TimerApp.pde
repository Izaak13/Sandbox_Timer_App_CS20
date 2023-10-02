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
  //
} //End Setup
//
void draw() {
  if ( windowActivated == true ) splashScreen();
} //End Draw
//
void mousePressed() {
  //first mouse click, activate window
  windowActivated = true;
} //End mousePressed
//
void keyPressed() {} //End keyPressed
//
//End MAIN Program
