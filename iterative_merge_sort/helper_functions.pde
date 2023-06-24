void startSim() { // this starts the simulation 
  for (int i = 0; i < array.length; i++) {
    int x = startX + i * (textSize + padding);
    int y = startY - (textSize + padding);
    arrowX = startX - 2*(textSize+padding);
    arrowY = y + 20;
    fill(0);
    textAlign(CENTER, CENTER);
    if ( i == array.length-1) {
      text(orgArray[i], x + textSize / 2, y + textSize / 2);
    }
    else {
    text(orgArray[i] +", ", x + textSize / 2, y + textSize / 2);
  }
  }
  arrowX = startX - 2*(textSize+padding);
  arrowY = startY - (textSize + padding) + 20;
  text("Orginal Array", arrowX - (arrowSize+padding), arrowY - 10);
  triangle(arrowX + arrowSize / 2+30, arrowY-5, arrowX + arrowSize / 4+30, arrowY - arrowSize / 4-5, arrowX + arrowSize / 4+30, arrowY + arrowSize / 4-5);
  line(arrowX - arrowSize / 2 +30, arrowY-5, arrowX + arrowSize / 2 +30, arrowY-5);
}
void printArray(int A[], int size) { // change the printArray function so it is easier to debug
  for (int i = 0; i < size; i++) {
    print(A[i] + " ");
  }
  println();
}

void printArray(int A[][], int size) { // same thing here but with 2D array
  for (int i = 0; i < size; i++) {
    for (int j = 0; j < size; j++) {
      print(A[i][j] + " ");
    }
    println();
  }
}
