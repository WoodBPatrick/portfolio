Ball[] b;//array of the balls
int bRad = 20;//radius of the balls
boolean started = false;//if you have clicked to start the game
void setup() {
  size(600, 800);
  b = new Ball[1];
  for (int i=0; i<b.length; i++)
    b[i] = new Ball(width/2, height+bRad, bRad);
}
void draw() {
  background(0);
  stroke(255);
  line(width/2, height, mouseX, mouseY);
  if (started)
    for (int i=0; i<b.length; i++) {
      b[i].move();
      b[i].show();
    }
  else
    for (int i=0; i<b.length; i++) {
      b[i].show();
    }
  println(""+mouseX+" "+b[0].getX()+" "+b[0].getY());
}
void mouseClicked() {
  for (int i=0; i<b.length; i++) {
    b[i].move();
    b[i].show();
  }
  started  = true;
  for (int i=0; i<b.length; i++) 
    b[i].moveToX();
}
