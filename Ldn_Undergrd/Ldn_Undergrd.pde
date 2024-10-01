void setup()
{
  size(400,400);
  textSize(40);
}

void draw(){
  background(155); 
  strokeWeight(50);       
  stroke(255,255,255);
  circle(mouseX,mouseY,180);
  
  strokeWeight(50);       
  stroke(255,0,0);
  circle(mouseX,mouseY,200);



  strokeWeight(1);
  noFill();  
  stroke(0, 51, 204);
  fill(0, 25, 124);
  rect(mouseX-140,mouseY-30,300,55);
  fill(255,255,255);
  stroke(255,255,255);
  text("UNDERGROUND",mouseX-123,mouseY+12);
} 
