float playButtonX, playButtonY, playButtonWidth, playButtonHeight;
float backgroundX, backgroundY, backgroundWidth, backgroundHeight;
PImage playButtonPic, backgroundPic, numpadButtonPic;
int brightnessNumber=128; 

void imageSetup() {
  playButtonWidth=appWidth*1/6;
  playButtonHeight=playButtonWidth;
  playButtonX=appWidth*1/2-playButtonWidth*1/2;
  playButtonY=appHeight*10/12;
  playButtonPic = loadImage("../TimerApp Images/play_button.png");
  numpadButtonPic = loadImage("../TimerApp Images/numpadbutton.png");
  backgroundX=0;
  backgroundY=0;
  backgroundWidth=width;
  backgroundHeight=height;
  backgroundPic = loadImage("../TimerApp Images/timerappbg.jpg");
}
void imageDraw() {
  image(backgroundPic, backgroundX, backgroundY, backgroundWidth, backgroundHeight);
  image(numpadButtonPic, playButtonX, playButtonY, playButtonWidth, playButtonHeight);
  if (numpad == true) {
  image(playButtonPic, playButtonX, playButtonY, playButtonWidth, playButtonHeight);
  }
}
