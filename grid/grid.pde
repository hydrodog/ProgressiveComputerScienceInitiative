void setup() {
  size(600,600);  
}

void draw() {
  for (int x = 0; x < width; x += width/8) {
    line(x,0, x,height);
  }
  for (int y = 0; y < height; y += height/8) {
    line(0,y, width,y);
  }
}