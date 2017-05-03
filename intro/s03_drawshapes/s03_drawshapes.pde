/*
 * Demonstration of different 2-D drawing commands in Processing
 * @author Dov Kruger
 * @created 2014-02-01
 * (c)2014 Ad Astra Education
 * Permission granted to use for non-commercial educational purposes
 * provided this comment is left intact
 */
void setup() {
  size(600,400);
}

void draw() {    // draw is called over and over again
  background(0); // set background to black
  stroke(0, 255, 0); // draw edge bright green
  strokeWeight(3); // edge is 3 dots thick
  fill(0,0,255); 
  rect(25,40, 80,40);
  rect(150, 40, 80, 40, 20, 20, 20, 20); // rounded rectangle
  triangle(25,150, 100,250, 25,250);
  quad(150,150, 250,180, 220,280, 140, 250); // quadrilateral going clockwise
  fill(255,0,0);
  quad(300,150, 400,300, 400,200, 300, 300); // quadrilateral done in the wrong order
  line(500,150, 600, 350);
  ellipse(50,350, 100, 50); // ellipse: wider than it is high
  ellipse(250,350, 50, 50); // when width = height, it's a circle
}
