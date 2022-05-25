Line l1;
Line l2;

void setup() {
  background(random(100, 255));
  size(displayWidth, displayHeight);
  l1 = new Line(random(width), random(height));
  l2 = new Line(random(width), random(height));
}
 void draw() {
   l1.display();
   l2.display();
 }
