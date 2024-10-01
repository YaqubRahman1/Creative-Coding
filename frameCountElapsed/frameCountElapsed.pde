void setup()
{
  size(500,500);
  textSize(50);
}

void draw(){
  background(155); 
  fill(255,255,255);
  rect(100,100,300,100);
  println(frameCount);
  fill(0,25,124);

  text(nf(frameCount/60),160,160);
}
