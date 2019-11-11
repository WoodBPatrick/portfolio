class Ball {
  private int x;//where the ball starts on the x axis
  private int xDir;
  private int y;//where the ball starts on the y axis
  private int yDir;
  private int rad;//the radius size of the ball
  public Ball(int x, int y, int rad) {
    this.x=x;
    this.y=y;
    this.rad=rad;
    xDir=0;
    yDir=-10;
  }
  public void move() {
    x+=xDir;
    y+=yDir;
    
    if(y<rad)
      yDir*=-1;
    if(x>width-rad || x<rad)
      xDir*=-1;
  }
  public int radSize() {
    return rad;
  }
  public void show() {
    fill(255);
    ellipse(x, y, radSize(), radSize());
  }
  public void moveToX() {
    float w = width/2;
    double ang = Math.atan(800/w);
    xDir+=((mouseX/120)/ang);
  }
  public int getX() {
    return x;
  }
  public int getY() {
    return y;
  }
}
