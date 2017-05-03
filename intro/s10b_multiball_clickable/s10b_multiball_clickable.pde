// all balls will be the same size, these are constant
final int radius = 20, diameter = radius*2;
final int SIZE = 1000;
int n = 1;
float[] x = new float[SIZE];
float[] y = new float[SIZE];
float[] dx = new float[SIZE];
float[] dy = new float[SIZE];

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
    ellipse(x[i], y[i] , diameter, diameter);
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

void mousePressed() {
  x[n] = mouseX;
  y[n] = mouseY;  
}

void mouseReleased() {
  final float scale = 10.0 / width;
  dx[n ] = (mouseX - x[n]) * scale; 
  dy[n  ] = (mouseY - y[n]) * scale;
  n++; //n = n + 1;
}