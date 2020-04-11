DisplayText t1 = new DisplayText(400, 50, "The white circle at maximum size is the longest a tendril can be");
void setup() {
  size(800, 800);  
  frameRate(60);
}
void draw() {
  background(0);
  Cluster c1 = new Cluster(50, width/2, height/2);
  fill(255, 255, 255, 0); stroke(255); ellipse(width/2, height/2, 648, 648);
  t1.display();
  
  // initial number of segments in the tendril and starting (x,y) coordinate
}
void mousePressed() {
  redraw();
}
