void setup() {
  size(800, 600);    
  stroke(255,0,0);
  fill(40,0,140); 
}

float[] x = {100, 400, 300};
float[] y = {100, 100, 500};
float[] dx = {-2, +3, +1};
float[] dy = {+.5, -.2, +1.2};
void draw() {
  background(0);
  triangle(x[0],y[0],x[1],y[1],x[2],y[2]);
  for (int i = 0; i < x.length; i++) {
    x[i] += dx[i];
    if (x[i] < 0 || x[i] > width)
      dx[i] = -dx[i];
    y[i] += dy[i];
    if (y[i] < 0 || y[i] > height)
      dy[i] = -dy[i];
  }
}
