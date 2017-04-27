void setup() {
  size(600,500); 
  strokeWeight(3);
  stroke(0);
}

void drawColorBox(int x, int y, int w, int h, int r, int g, int b) {
  fill(r,g,b);
  rect(x, y, w, h);
  fill(255,255,255);
  text(r, x+10, y+10);
  text(g, x+10, y+20);
  text(b, x+10, y+30);
}

void draw() {
  final int w = width / 8, h = height / 7;
  drawColorBox(0,0, w, h, 0,0,0);
  drawColorBox(w,0, w, h, 96,96,96);
  drawColorBox(2*w,0, w, h, 160,160,160);
  drawColorBox(3*w,0, w, h, 255,255,255);
  drawColorBox(4*w,0, w, h, 64,0,0);
  drawColorBox(5*w,0, w, h, 128,0,0);

}