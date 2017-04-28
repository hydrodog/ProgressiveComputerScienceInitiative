void setup() {
  size(500,500); 
  strokeWeight(4);
  stroke(0);
  textSize(20);
}

void drawColorBox(int x, int y, int w, int h, int r, int g, int b) {
  fill(r,g,b);
  rect(x, y, w, h);
  if (r+g+b >= 255)
    fill(0);
  else
    fill(255);
  text(r, x+20, y+20);
  text(g, x+20, y+40);
  text(b, x+20, y+60);
}

void draw() {
  final int w = width / 8, h = height / 7;
  drawColorBox(0,0, w, h, 0,0,0);
  drawColorBox(w,0, w, h, 96,96,96);
  drawColorBox(2*w,0, w, h, 160,160,160);
  drawColorBox(3*w,0, w, h, 255,255,255);
  drawColorBox(4*w,0, w, h, 64,0,0);
  drawColorBox(5*w,0, w, h, 128,0,0);
  drawColorBox(6*w,0, w, h, 192,0,0);
  drawColorBox(7*w,0, w, h, 255,0,0);
  drawColorBox(0,h, w, h, 0,64,0);
  drawColorBox(w,h, w, h, 0,128,0);
  drawColorBox(2*w,h, w, h, 0,192,0);
  drawColorBox(3*w,h, w, h, 0,255,0);
  drawColorBox(4*w,h, w, h, 0,0,64);
  drawColorBox(5*w,h, w, h, 0,0,128);
  drawColorBox(6*w,h, w, h, 0,0,192);
  drawColorBox(7*w,h, w, h, 0,0,255);
  drawColorBox(0,2*h, w, h, 64,255,0);
  drawColorBox(w,2*h, w, h, 96,255,0);
  drawColorBox(2*w,2*h, w, h, 128,255,0);
  drawColorBox(3*w,2*h, w, h, 192,255,0);
  drawColorBox(4*w,2*h, w, h, 255,64,0);
  drawColorBox(5*w,2*h, w, h, 255,128,0);
  drawColorBox(6*w,2*h, w, h, 255,192,0);
  drawColorBox(7*w,2*h, w, h, 255,255,0);
  drawColorBox(0,3*h, w, h, 64,0,255);
  drawColorBox(w,3*h, w, h, 96,0,255);
  drawColorBox(2*w,3*h, w, h, 128,0,255);
  drawColorBox(3*w,3*h, w, h, 192,0,255);
  drawColorBox(4*w,3*h, w, h, 255,0,64);
  drawColorBox(5*w,3*h, w, h, 255,0,128);
  drawColorBox(6*w,3*h, w, h, 255,0,192);
  drawColorBox(7*w,3*h, w, h, 255,0,255);
  drawColorBox(0,4*h, w, h, 0,64,255);
  drawColorBox(w,4*h, w, h, 0,96,255);
  drawColorBox(2*w,4*h, w, h, 0,128,255);
  drawColorBox(3*w,4*h, w, h, 0,192,255);
  drawColorBox(4*w,4*h, w, h, 0,255,64);
  drawColorBox(5*w,4*h, w, h, 0,255,128);
  drawColorBox(6*w,4*h, w, h, 0,255,192);
  drawColorBox(7*w,4*h, w, h, 0,255,255);
  drawColorBox(0,5*h, w, h, 128,64,128);
  drawColorBox(w,5*h, w, h, 0,64,64);
  drawColorBox(2*w,5*h, w, h, 64,64,0);
  drawColorBox(3*w,5*h, w, h, 64,64,128);
  drawColorBox(4*w,5*h, w, h, 128,64,64);
  drawColorBox(5*w,5*h, w, h, 128,64,0);
  drawColorBox(6*w,5*h, w, h, 128,0,64);
  drawColorBox(7*w,5*h, w, h, 64,0,128);
  drawColorBox(5*w,6*h, w, h, 255,192,255);
  drawColorBox(6*w,6*h, w, h, 192,255,255);
  drawColorBox(7*w,6*h, w, h, 255,255,192);
}