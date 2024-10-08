int x, y, size;
boolean isIn = false;    // -- is the mouse in the rect()?
boolean isOn = false;    // -- is the checkbutton on?
 
void setup()
{
  size(400, 400);
  x = width/4;
  y = height/4;
  size = width/15;
}
 
// -- The draw() loop - here is where we control flow and draw things!
void draw()
{
  if (isOn) {
    // -- yellow if on!
    background(255, 255, 140);
  } else {
    // -- white if not!
    background(255);
  }
 
  // -- change colour to be used in rect based on status:
  if (isIn) {
    fill(255, 128, 64);
  } else if (isOn) {
    fill(255, 0, 0);
  } else {
    fill(240);
  }
 
  // -- the main rectangle - always shown :
  rect(x, y, size, size);
 
  fill(64, 200);
  // -- things to show based on status!
  if (isOn) {
    // -- middle rectangle and reminder text :
    rect(x+size*0.25, y+size*0.25, size*0.5, size*0.5);
    text("Remember to turn me off before you leave ...", 120, height-10);
    text("On", x+size*1.5, 15+height/4);
  } else {
    text("Off", x+size*1.5, 15+height/4);
  }
}
 
 
// -- Event handling methods:
// --   here is where we detect interactions and capture them in variables...
 
// -- Processing will call this method whenever the mouse is moved:
void mouseMoved()
{
  // -- is mouse position inside the rectangle?
  if  ((mouseX > x/2) && (mouseY >y) && (mouseX < x+size) && (mouseY < y+size))
  {
    isIn = true;
  } else {
    isIn = false;
  }
}
 
// -- Processing will call this method whenever the mouse is clicked:
void mouseClicked()
{
  // -- is mouse position inside the rectangle?
  if  ((mouseX > x/2) && (mouseY >y) && (mouseX < x+size) && (mouseY < y+size))
  {
    // -- switch isON to whatever it is not - shorthand follows on the next line (try it):
    // -- isOn = !isOn
    if (isOn) {
      isOn = false;
    } else {
      isOn = true;
    }
  }
}
