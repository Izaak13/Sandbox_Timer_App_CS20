float widthSquare, heightSquare;
int numPadColumns = 3;
int numPadRows = 5;
float[] x = new float [numPadColumns];
float[] y = new float [numPadRows];
float border=0.0;
//
//method for writing X&Y Array variables
     float  writeCoordinate (int i, int oddStart) {
     return widthSquare*(2*i+oddStart)/2;
   } // End writecoordinate
   //
void population() {
  // Simple width algorithm
  widthSquare=appWidth*1/4;
  heightSquare=widthSquare;
  //
  //Height Error Check
  if ( widthSquare*8 <= appHeight ) {
    println("true");
  }
  else
  {
    println("false");
    widthSquare = heightSquare = appHeight*1/8;
    border = appWidth - ( widthSquare*1/2 + widthSquare*3 + widthSquare*1/2 );
    border = border*1/2; // using one variable saves system resources
  }
  //End hiehgt error check
    // Writing X&Y rect ()variables
  for (int i=0; i<numPadColumns; i++ ) { //i stops for x, not y
    x[i] = border+widthSquare*(2*i+1)/2;
    println("Inside x", x[i]);
  } //End For
  for (int i=0; i<numPadRows; i++) {
    y[i] = widthSquare*(2*i+5)/2;
    println("Inside y", y[i]);
  }//End For
  //
  //if(i<numPadColumns)
  //println("Inside y", y[i], "/t");
  printArray(x);
  printArray(y);
  //End rect variables
} //End population
