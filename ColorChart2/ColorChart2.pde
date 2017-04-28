void setup() {
  size(500,500); 
  strokeWeight(4);
  stroke(0);
  textSize(20);
}

int x,y;

void drawColorBox(int r, int g, int b) {
  final int w = width / 8, h = height / 7;
  fill(r,g,b);
  rect(x, y, w, h);
  if (r+g+b >= 255)
    fill(0);
  else
    fill(255);
  text(r, x+20, y+20);
  text(g, x+20, y+40);
  text(b, x+20, y+60);
  x += w;
  if (x >= width) {
    y += h;
    x = 0;
  }
}

void draw() {
  x = 0; y = 0;
  drawColorBox(0,0,0);
  drawColorBox(96,96,96);
  drawColorBox(160,160,160);
  drawColorBox(255,255,255);
  drawColorBox(64,0,0);
  drawColorBox(128,0,0);
  drawColorBox(192,0,0);
  drawColorBox(255,0,0);
  drawColorBox(0,64,0);
  drawColorBox(0,128,0);
  drawColorBox(0,192,0);
  drawColorBox(0,255,0);
  drawColorBox(0,0,64);
  drawColorBox(0,0,128);
  drawColorBox(0,0,192);
  drawColorBox(0,0,255);
  drawColorBox(64,255,0);
  drawColorBox(96,255,0);
  drawColorBox(128,255,0);
  drawColorBox(192,255,0);
  drawColorBox(255,64,0);
  drawColorBox(255,128,0);
  drawColorBox(255,192,0);
  drawColorBox(255,255,0);
  drawColorBox(64,0,255);
  drawColorBox(96,0,255);
  drawColorBox(128,0,255);
  drawColorBox(192,0,255);
  drawColorBox(255,0,64);
  drawColorBox(255,0,128);
  drawColorBox(255,0,192);
  drawColorBox(255,0,255);
  drawColorBox(0,64,255);
  drawColorBox(0,96,255);
  drawColorBox(0,128,255);
  drawColorBox(0,192,255);
  drawColorBox(0,255,64);
  drawColorBox(0,255,128);
  drawColorBox(0,255,192);
  drawColorBox(0,255,255);
  drawColorBox(128,64,128);
  drawColorBox(0,64,64);
  drawColorBox(64,64,0);
  drawColorBox(64,64,128);
  drawColorBox(128,64,64);
  drawColorBox(128,64,0);
  drawColorBox(128,0,64);
  drawColorBox(64,0,128);
  drawColorBox(255,192,255);
  drawColorBox(192,255,255);
  drawColorBox(255,255,192);
}