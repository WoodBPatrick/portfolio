int rand;
PImage img;
Cluster c;
void setup() {
  size(800, 800);  
  frameRate(60);
  img = loadImage("images/_Z.jpg");
}
void draw() {
  background(0);
  image(img, 0, 0, width, height);
  rand=(int)(Math.random()*3)+1;
  if (rand==1)
    c = new Cluster(50, 255, 230);
  else if (rand==2)
    c = new Cluster(30, 255, 230);
  else
    c = new Cluster(10, 255, 230);
}
void mousePressed() {
  redraw();
}
