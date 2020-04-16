DisplayDraw d1 = new DisplayDraw();
int rand;
Cluster c;
void setup() {
  size(800, 800);  
  frameRate(60);
}
void draw() {
  background(0);
  rand=(int)(Math.random()*3)+1;
  if (rand==1)
    c = new Cluster(50, width/2, height/2);
  else if (rand==2)
    c = new Cluster(30, width/2, height/2);
  else
    c = new Cluster(10, width/2, height/2);
  d1.display();
}
void mousePressed() {
  redraw();
}
