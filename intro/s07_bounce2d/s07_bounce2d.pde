/*
 * Animation Bouncing off all the walls
 * @author Dov Kruger
 * @created 2014-02-01
 * (c)2014 Ad Astra Education
 * Permission granted to use for non-commercial educational purposes
 * provided this comment is left intact
 */
void setup() {
  size(600,400);
}

int x = 0, y = 0;
int dx = 1, dy = 1;
int rectSize = 40;
void draw() {    // draw is called over and over again
  background(0); // set background to black
  stroke(0, 255, 0); // draw edge bright green
  strokeWeight(3); // edge is 3 dots thick
  fill(0,0,255); 
  rect(x,y, rectSize,rectSize);
  x += dx;
  y += dy;
  if (x <= 0 || x >= width-1-rectSize) {
    dx = -dx;
  }
  if (y <= 0 || y >= height-1-rectSize) {
    dy = -dy;
  }
}
