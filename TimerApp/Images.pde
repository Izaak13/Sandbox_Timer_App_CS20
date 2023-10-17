float playButtonX, playButtonY, playButtonWidth, playButtonHeight;
float backgroundX, backgroundY, backgroundWidth, backgroundHeight;
PImage playButtonPic;

void imageSetup() {
  playButtonX=appWidth/2-playButtonWidth/2;
  playButtonY=appHeight*7/8;
  playButtonWidth=512;
  playButtonHeight=512;
  playButtonPic = loadImage("../TimerApp Images/play_button.png");
}
void imageDraw() {
  image(playButtonPic, playButtonX, playButtonY, playButtonWidth, playButtonHeight);
}
