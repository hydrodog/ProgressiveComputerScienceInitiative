void setup() {
  size(600,600);
}

void draw() {
  fill(0,0,255);
  ellipse(300,300,400,400);
  fill(255,255,0);
  ellipse(220,220,50,50);
  ellipse(380,220,50,50);
  ellipse(300,300,50,50);
  arc(300,350, 300,150, PI/8, 7*PI/8);
}