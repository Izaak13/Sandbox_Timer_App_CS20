//Global Variables
int appWidth, appHeight;
int digit = 1;
Boolean windowActivated = false;
Boolean numpad = true;
//
void setup() {
  size(400, 700);
  if (numpad==true) {
    numpadSetup();
  }
  timeSetup();
  imageSetup();
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
  //
} //End Setup
//
void draw() {
  //if ( windowActivated == true ) splashScreen();
  //
  timeDraw();
  homeDraw();
  imageDraw();
  if (numpad==true) {
    numpadDraw();
  }
  else
  {
    textDrawNew(white, CENTER, CENTER, font, String.valueOf(seconds), appWidth*0, appHeight*2.9/7, appWidth, appHeight*1/5);
  }
} //End Draw
//
void mousePressed() {
  //first mouse click, activate window
  windowActivated = true;
  //numpad mousepressed
  if (numpad==true)
  {
  for(int i=0; i<numPadColumns; i++) {
      for(int j=0; j<numPadRows-2; j++) {
          if (mouseX>x[i] && mouseX<x[i]+widthSquare && mouseY>y[j] && mouseY<y[j]+widthSquare) 
          {
          println(j*3+i+1);
          enteredTime=enteredTime*10;
          displayTime=j*3+i+1;
          enteredTime+=j*3+i+1;
          digit++;
          }
      }// End for
    }//End for 
    if ( mouseX>x[0] && mouseX<x[0]+widthSquare && mouseY>y[3] && mouseY<y[3]+widthSquare)
    {
      enteredTime=0;
      seconds=0;
      minutes=0;
      hours=0;
      digit=1;
      println("DEL");
    }
    if ( mouseX>x[1] && mouseX<x[1]+widthSquare && mouseY>y[3] && mouseY<y[3]+widthSquare)
    {
      enteredTime=enteredTime*10;
      println("0");
    }
    if ( mouseX>x[2] && mouseX<x[2]+widthSquare && mouseY>y[3] && mouseY<y[3]+widthSquare)
    {
      enteredTime=enteredTime*100;
      println("00");
    }
  }
    if ( mouseX>appWidth*1/2-playButtonWidth*1/2 && mouseX<appWidth*1/2-playButtonWidth*1/2+playButtonWidth && mouseY>appHeight*10/12 && mouseY<appHeight*10/12+playButtonHeight)
    {
      if (numpad==false) 
      {
        time=false;
        numpad=true;
      }
      else
      {
      time=true;
      numpad=false;
      }
      println("timer started");
    }
    //
    if (digit==2)
    {
      seconds+=displayTime;
    }
    if (digit==3)
    {
      lastTime=seconds;
      seconds*=10;
      seconds+=displayTime;
    }
    if (digit==4)
    {
      minutes+=lastTime;
      seconds-=lastTime*10;
      seconds*=10;
      seconds+=displayTime;
    }
    if (digit==5)
    {
    }
    
} //End mousePressed
//
void keyPressed() {} //End keyPressed
//
//End MAIN Program
