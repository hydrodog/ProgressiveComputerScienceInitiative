/*
 * Two balls bouncing
 * @author Dov Kruger
 * @created 2014-02-01
 * (c)2014 Ad Astra Education
 * Permission granted to use for non-commercial educational purposes
 * provided this comment is left intact
 */
 void setup() {
  size(600,400);
  noStroke();
}

// all balls will be the same size, these are constant
final int radius = 20, diameter = radius*2;

float x = radius, y = radius;
float dx = 2, dy = 3;

float x2 = 5*radius-3, y2 = 10*radius;
float dx2 = -2, dy2 = +1;

void draw() {    // draw is called over and over again
  background(0); // set background to black
  fill(0,0,255); // 1st balls is green
  ellipse(x,y, diameter, diameter);
  x += dx;
  y += dy;
  if (x <= radius || x >= width-1-radius) {
    dx = -dx;
  }
  if (y <= radius || y >= height-1-radius) {
    dy = -dy;
  }
  fill(255,0,255); // 2nd ball is pink
  ellipse(x2,y2, diameter, diameter);
  x2 += dx2;
  y2 += dy2;
  if (x2 <= radius || x2 >= width-1-radius) {
    dx2 = -dx2;
  }
  if (y2 <= radius || y2 >= height-1-radius) {
    dy2 = -dy2;
  }
}
