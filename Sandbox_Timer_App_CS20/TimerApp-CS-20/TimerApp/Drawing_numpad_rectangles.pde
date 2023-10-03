void numPadRects() {
  for(int i=0; i<numPadColumns; i++) {
      for(int j=0; j<numPadRows-1; j++) {
          rect(x[i], y[j], widthSquare, heightSquare);
      } // End for
    } //End for 
} //EndNumPadRects
