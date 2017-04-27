void setup() {
  size(600,600);
}

void draw() {
  translate(width/2, height/2);
  for (int r = width; r > 0; r -= 50) {
    if (r % 100 == 0)
      fill (255,0,0);
    else
      fill(255);
    ellipse(0,0, r,r);
  }
}
