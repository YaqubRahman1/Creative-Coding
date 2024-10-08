void setup() {
  size(500, 500);
}


void draw() {
  for (int row=0; row<9; row = row+1)
  {
    for (int col=0; col<9; col = col+1)
    {
      check(row,col);
      square((row*55) + random(0, 3), (col*55), 50);
    }
  }
}


void check(int num, int num2) {
  if (mouseX > num*55 && mouseX < num*55+50  && mouseY > num2*55  && mouseY < num2*55+50) {
    fill(#8EFFF5);
  } else {
    fill(#FFBF8E);
  }
}
