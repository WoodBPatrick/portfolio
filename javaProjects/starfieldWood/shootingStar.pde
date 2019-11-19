class shootingStar implements Particle {
  private double x, y, ang/*angle of the particles*/, speed, size;
  private int rand;
  public shootingStar() {
    rand=(int)(Math.random()*4);
    if(rand==0)
    this.x=x;
    this.y=y;
    ang=(Math.PI/2)+Math.random()*20;
    speed=(Math.random()*2)+1;
    size=30;
  }
  void move() {
    x+=Math.cos(ang)*speed;
    y+=Math.sin(ang)*speed;
  }
  void show() {
    fill(255);
    stroke(255);
    ellipse((int)x, (int)y, (int)size, (int)size);
  }
  void restartBang() {
    x-=Math.cos(ang)*speed;
    y-=Math.sin(ang)*speed;
  }
  double getSizeX() {
    return size;
  }
}
