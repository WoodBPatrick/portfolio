class NormalParticle{
  private double x, y, ang/*angle of the particles*/, speed;
  private int r, g, b;
  public NormalParticle(double x, double y){
    this.x=x+Math.random()*20;
    this.y=y+Math.random()*20;
    ang=(Math.PI/2);
    speed=.9;
    r=(int)(Math.random()*150)+50;
    g=(int)(Math.random()*150)+50;
    b=(int)(Math.random()*150)+50;
  }
  public void move(){
    x+=Math.cos(ang)*speed;
    y+=Math.sin(ang)*speed;
    
    if(x>670 || x<130 || y>670 || y<130)
      speed*=-1;
  }
  public void show(){
    fill(r,g,b);
    stroke(r,g,b);
    ellipse((int)x,(int)y,3,3);
  }
  public int getX(){
    return (int)x;
  }
  public int getY(){
    return (int)y;
  }
}
