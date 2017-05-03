float x1,y1,x2,y2,x3,y3;
void setup() {
  size(600,600); 
  x1 = random(width);
  x2 = random(width);
  x3 = random(width);
  y1 = random(height);
  y2 = random(height);
  y3 = random(height);
}

void draw() {
  background(100,200,0);
  triangle(x1,y1,x2,y2,x3,y3);
  x1 += random(4)-2;
  y1 += random(4)-2;
  x2 += random(4)-2;
  y2 += random(4)-2;
  x3 += random(4)-2;
  y3 += random(4)-2;
}