/*
 * Animated Snowpeople
 * @author Dov Kruger
 * @created 2014-02-01
 * (c)2014 Ad Astra Education
 * Permission granted to use for non-commercial educational purposes
 * provided this comment is left intact
 */
 
final int radius = 20;  // radius of snow person base
final int d = radius*2; // diameter of bottom
final int d2 = d * 2/3; // middle of snowman
final int d3 = d * 1/2; // head
final int eye = d/10;

final int n = 10;
float[] x = new float[n];
float[] y = new float[n];
float[] dx = new float[n];
float[] dy = new float[n];

void setup() {
  size(600,400);
  noStroke();
  fill(0,0,255); // all balls blue
  // set up all balls at random places at random speed
  for (int i = 0; i < n; i++) {
    x[i] = random(radius, width - radius);
    y[i] = random(radius, height - radius);
    dx[i] = random(-3, +3);
    dy[i] = random(-3, +3);
  }
}

void draw() {    // draw is called over and over again
  background(0); // set background to black
  for (int i = 0; i < n; i++) {
    fill(255);
    ellipse(x[i], y[i] , d, d);
    ellipse(x[i], y[i]-(d/3*2) , d2, d2);
    ellipse(x[i], y[i]-(d+d2)/3*2 , d3, d3);
    fill(0);
    ellipse(x[i]-d/7, y[i]-d*7/6, eye,eye);
    ellipse(x[i]+d/7, y[i]-d*7/6, eye,eye);
    x[i] += dx[i];
    y[i] += dy[i];
    if (x[i] <= radius || x[i] >= width-1-radius) {
      dx[i] = -dx[i];
    }
    if (y[i] <= radius || y[i] >= height-1-radius) {
      dy[i] = -dy[i];
    }
  }
}
