void setup() {
  size(590, 500);
}


void draw() {
  for (int row=0; row<9; row = row+1)
  {
    check(row);
    square(row*65, 50, 50);
  }
}


void check(int num) {
  if (mouseX > num*65 && mouseX < num*65+50  && mouseY > 50  && mouseY < 100) {
    fill(#8EFFF5);
  } else {
    fill(#FFBF8E);
  }
}
