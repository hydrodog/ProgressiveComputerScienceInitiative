void setup() {
  size(600,600);
  fill(255);
  textSize(100);
}

short count = -1;
void draw() {
  background(0);
  text(count + "", 200,300);
  count*=2;
  delay(500);
}
