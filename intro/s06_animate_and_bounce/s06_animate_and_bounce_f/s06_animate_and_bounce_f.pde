/*
 * Move right and bounce off the right edge
 * @author Dov Kruger
 * @created 2014-02-01
 * (c)2014 Ad Astra Education
 * Permission granted to use for non-commercial educational purposes
 * provided this comment is left intact
 */
void setup() {
  size(600,400);
}

final int RADIUS = 40; 
int x = RADIUS, y = RADIUS;
int speedX = +2, speedY = +3;
void draw() {    // draw is called over and over again
  background(0); // set background to black
  stroke(0, 255, 0); // draw edge bright green
  strokeWeight(3); // edge is 3 dots thick
  fill(0,0,255); 
  ellipse(x,y, 2*RADIUS,2*RADIUS);
  x = x + speedX;
  y = y + speedY;
  if (x < 0+RADIUS || x >= width-RADIUS ) {
    speedX = -speedX;   
  }
  if (y < 0+RADIUS || y >= height-RADIUS ) {
    speedY = -speedY;   
  }

}
