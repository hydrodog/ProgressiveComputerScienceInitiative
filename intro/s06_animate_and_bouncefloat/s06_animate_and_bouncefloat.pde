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

float x = 0, y = 0;
float speedx = 0.2, speedy = 3.65;
final int SIZE = 100;
void draw() {    // draw is called over and over again
  background(0); // set background to black
  rect(x,y, SIZE,SIZE);
  x = x + speedx;
  y = y + speedy;
  if (x < 0 || x + SIZE >= width) {
    speedx = -speedx;
  }
  if (y < 0 || y + SIZE >= height) {
    speedy = -speedy;
  }

}