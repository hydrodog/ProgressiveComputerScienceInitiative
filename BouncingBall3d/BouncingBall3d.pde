PShape ball;
final int r = 100;
void setup() {
  size(800,800, P3D);
  ball = createShape(SPHERE, r);
}

final float depth = 750;
float x = 300, y = 300, z = 300;
float dx = 2.5, dy = 1.5, dz = 3.5;
void draw() {
  background(0);
  translate(x,y,z);
  shape(ball);
  x += dx;
  y += dy;
  z += dz;
  if (x < r || x >= width-r)
    dx = -dx;
  if (y < r || y >= height-r)
    dy = -dy;
  if (z < r || z >= depth-r)
    dz = -dz;
}