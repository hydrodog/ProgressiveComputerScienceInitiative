// all balls will be the same size, these are constant
final int radius = 20, diameter = radius*2;
float[] x = {
  20,  100, 200, 550
};
float[] y = {
  20,  300, 200, 100
};
float[] dx = {
  +1, +2, -1, -3
};
float[] dy = {
  0, 1, 1, 2
};

void setup() {
  size(600,400);
  noStroke();
  fill(0,0,255); // all balls blue
}

void draw() {    // draw is called over and over again
  background(0); // set background to black
  for (int i = 0; i < x.length; i++) {
    ellipse(x[i], y[i], diameter, diameter);
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
