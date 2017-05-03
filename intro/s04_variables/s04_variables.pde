/*
 * First use of variable preparatory to animation
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
void draw() {    // draw is called over and over again
  fill(0,0,255); 
  rect(x,y, 80,40);
  x = x + 1;
}
