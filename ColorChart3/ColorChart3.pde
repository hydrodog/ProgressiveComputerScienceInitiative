void setup() {
  size(1200,700); 
  strokeWeight(4);
  stroke(0);
  textSize(20);
}

int x,y;
int w, h;
int numCols;

void drawColorBox(int r, int g, int b) {
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

void drawColorBoxes(int numCols, int numRows, int colorChange) {
  w = width / 16; // w is the width of each color box
  h = height / 10; // h is the height of each color box
  x = 0; y = 0;
  for (int r = 0; r <= 256; r += colorChange) {
    if (r == 256)
      r = 255; // special case for last value
    for (int g = 0; g <= 256; g += colorChange) {
      if (g == 256)
        g = 255;
      for (int b = 0; b <= 256; b += colorChange) {
        if (b == 256)
          b = 255;
        drawColorBox(r,g,b);
      }
    }
  }
}
  
void draw() {
  drawColorBoxes(8, 7, 64);
}