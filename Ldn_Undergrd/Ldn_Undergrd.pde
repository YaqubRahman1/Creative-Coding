void setup()
{
  background(155); 
  size(400,400);
  textSize(37);
}

void draw(){
  strokeWeight(50);       
  stroke(255,255,255);
  circle(180,150,180);
  
  strokeWeight(50);       
  stroke(255,0,0);
  circle(180,150,200);



  strokeWeight(1);
  noFill();  
  stroke(0, 51, 204);
  fill(0, 25, 124);
  rect(35,120,300,55);
  fill(255,255,255);
  stroke(255,255,255);
  text("UNDERGROUND",60,160);
} 
