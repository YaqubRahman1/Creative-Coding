PVector[] clickedPoints; // Stores all clicked positions.
int next; // the next free position in clickedPoints
 
void setup()
{
  size(400,400);
  stroke(150,74,50);
  fill(150,74,50);
  strokeWeight(6);
 
  // an array with room for 5 points
  clickedPoints = new PVector[12];
  // add sketch centre as first point
  clickedPoints[0] = new PVector(width/2,height/2);
  next = 1;
}
 
void draw()
{
  background(243,142,45);
 
  for (int i = 0; i < next; ++i)
  {
    PVector p = clickedPoints[i];
    circle(p.x,p.y,12);
    line(p.x,p.y,mouseX,mouseY);
  }
}
 
void mousePressed()
{
  if (next < clickedPoints.length) {
    clickedPoints[next] = new PVector(mouseX,mouseY);
    next = next + 1;
  }
}
