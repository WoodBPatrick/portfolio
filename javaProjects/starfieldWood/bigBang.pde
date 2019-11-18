class bigBang implements Particle {
  private double speed, ang, sizeX, sizeY;
  int x, y;
  boolean click=false;
  public bigBang(int x, int y) {
    this.x=x;
    this.y=y;
    speed=1.05;
    ang=(Math.PI*2);
    sizeX=0;
    sizeY=0;
  }
  public bigBang(int x, int y, double sizeX, double sizeY) {
    this.x=x;
    this.y=y;
    speed=1.05;
    ang=(Math.PI*2);
    this.sizeX=sizeX;
    this.sizeY=sizeY;
  }
  public void move() {
    sizeX+=ang*speed;
    sizeY+=ang*speed;
  }
  public void restartBang(){
    sizeX-=ang*speed;
    sizeY-=ang*speed;
  }
  public void show() {
    fill(0);
    stroke(255);
    ellipse(x, y, (int)sizeX, (int)sizeY);
  }
  public double getSizeX(){
    return sizeX;
  }
}
