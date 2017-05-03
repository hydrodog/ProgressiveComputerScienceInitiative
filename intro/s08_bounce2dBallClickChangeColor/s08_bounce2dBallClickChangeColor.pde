/*
 * Color changes randomly when you click on the ball
 * @author Dov Kruger
 * @created 2014-02-01
 * (c)2014 Ad Astra Education
 * Permission granted to use for non-commercial educational purposes
 * provided this comment is left intact
 */
void setup() {
  size(600,400);
}

int dx = 1, dy = 1;
int radius = 20, diameter = radius*2;
int x = radius, y = radius;
int r = 0, g = 0, b = 255;
void draw() {    // draw is called over and over again
  background(0); // set background to black
  stroke(0, 255, 0); // draw edge bright green
  strokeWeight(3); // edge is 3 dots thick
  fill(r,g,b); 
  ellipse(x,y, diameter, diameter);
  x += dx;
  y += dy;
  if (x <= radius || x >= width-1-radius) {
    dx = -dx;
  }
  if (y <= radius || y >= height-1-radius) {
    dy = -dy;
  }
}

void mousePressed() {
  if (dist(mouseX, mouseY, x, y) < radius) {
    r = (int)random(0,256);
    g = (int)random(0,256);
    b = (int)random(0,256);
  }
}
