//Global Variables
int appWidth, appHeight;
int digit = 0;
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
  if (hours < 10)
  {
    hourZero = "0";
  }
  else
  {
    hourZero = "";
  }
  //
  if (minutes < 10)
  {
    minuteZero = "0";
  }
  else
  {
    minuteZero = "";
  }
  //
  if (seconds < 10)
  {
    secondZero = "0";
  }
  else
  {
    secondZero = "";
  }
  //hours = enteredTime/3600;
  //minutes = (enteredTime-hours*3600)/60;
  //seconds = enteredTime - hours*3600 - minutes*60;
    //
  homeDraw();
  imageDraw();
  if (numpad==true) {
    numpadDraw();
  }
  else
  {
    timeDraw();
    textDrawNew(white, CENTER, CENTER, font, String.valueOf(hours)+colon+minuteZero+String.valueOf(minutes)+colon+secondZero+String.valueOf(seconds), appWidth*0, appHeight*2.83/7, appWidth, appHeight*1/5);
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
          displayTime=j*3+i+1;
          digit++;
          }
      }// End for
    }//End for 
    if ( mouseX>x[0] && mouseX<x[0]+widthSquare && mouseY>y[3] && mouseY<y[3]+widthSquare)
    {
      displayTime=0;
      seconds=0;
      minutes=0;
      hours=0;
      digit=0;
      println("DEL");
    }
    if ( mouseX>x[1] && mouseX<x[1]+widthSquare && mouseY>y[3] && mouseY<y[3]+widthSquare)
    {
      if (digit>0)
      {
      displayTime=0;
      digit++;
      println("0");
      }
    }
    if ( mouseX>x[2] && mouseX<x[2]+widthSquare && mouseY>y[3] && mouseY<y[3]+widthSquare)
    {
      println("00");
    }
  }
    if ( mouseX>appWidth*1/2-playButtonWidth*1/2 && mouseX<appWidth*1/2-playButtonWidth*1/2+playButtonWidth && mouseY>appHeight*10/12 && mouseY<appHeight*10/12+playButtonHeight)
    {
      if (numpad==false) 
      {
        time=false;
        numpad=true;
        displayTime=0;
      seconds=0;
      minutes=0;
      hours=0;
      digit=0;
      }
      else
      {
      time=true;
      numpad=false;
      }
      println("timer started");
    }
    //
    if (numpad==true)
    {
    if (digit==1)
    {
    seconds = displayTime;
    }
    if (digit==2)
    {
    seconds*=10;
    seconds+=displayTime;
    }
    if (digit==3)
    {
    minutes=seconds/10;
    seconds-=seconds/10*10;
    seconds*=10;
    seconds+=displayTime;
    }
    if (digit==4)
    {
      minutes=minutes*10;
      minutes+=seconds/10;
      seconds-=seconds/10*10;
      seconds*=10;
      seconds+=displayTime;
    }
    if (digit==5)
    {
      hours=minutes/10;
      minutes-=minutes/10*10;
      minutes*=10;
      minutes+=seconds/10;
      seconds-=seconds/10*10;
      seconds*=10;
      seconds+=displayTime;
    }
    if (digit==6)
    {
      hours*=10;
      hours+=minutes/10;
      minutes-=minutes/10*10;
      minutes*=10;
      minutes+=seconds/10;
      seconds-=seconds/10*10;
      seconds*=10;
      seconds+=displayTime;
    }
    //
    println("hours: "+hours);
    println("minutes: "+minutes);
    println("seconds: "+seconds);
    println("time: "+displayTime);
    println("digit: "+digit);
    println("-");
    //
    }
  } //End mousePressed
//
void keyPressed() {} //End keyPressed
//
//End MAIN Program
