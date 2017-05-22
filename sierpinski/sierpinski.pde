void setup() {
  size(800,800);   
  frameRate(1);
}
void sierpinski(float x1, float y1,
                float x2, float y2,
                float x3, float y3,
                int level) {
  if (level == 0) {
    triangle(x1,y1,x2,y2,x3,y3);
    return;
  }
  float xa = (x1+x2)/2, ya = (y1+y2) / 2;
  float xb = (x2+x3)/2, yb = (y2+y3) / 2;
  float xc = (x1+x3)/2, yc = (y1+y3) / 2;
  
  sierpinski(x1,y1, xa,ya, xc,yc, level-1);
  sierpinski(xa,ya, x2,y2, xb,yb, level-1);
  sierpinski(xc,yc, x3,y3, xb,yb, level-1);
}

int level = 0;
void draw() {
  background(0);
  sierpinski(0,0, width-1,0, width/2,height-1, level);
  level++;
  if (level > 9)
    level = 0;
}