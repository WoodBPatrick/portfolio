class NormalParticle implements Particle{
  private double x, y, ang/*angle of the particles*/, speed, sizeGrowth, size;
  private int r, g, b;
  public NormalParticle(double x, double y){
    this.x=x;
    this.y=y;
    ang=(Math.PI/2)+Math.random()*20;
    speed=(Math.random()*1.5)+.3;
    r=(int)(Math.random()*150)+50;
    g=(int)(Math.random()*150)+50;
    b=(int)(Math.random()*150)+50;
    size=(Math.random()*5)+1;
    sizeGrowth=(Math.random()*.05)-.02;
  }
  public void move(){
    x+=Math.cos(ang)*speed;
    y+=Math.sin(ang)*speed;
    size+=sizeGrowth;
  }
  public void restartBang(){
    x-=Math.cos(ang)*speed;
    y-=Math.sin(ang)*speed;
    size-=sizeGrowth;
  }
  public void show(){
    fill(r,g,b);
    stroke(r,g,b);
    //fill((int)(Math.random()*150)+50,(int)(Math.random()*150)+50,(int)(Math.random()*150)+50);
    //stroke((int)(Math.random()*150)+50,(int)(Math.random()*150)+50,(int)(Math.random()*150)+50);
    ellipse((int)x,(int)y,(int)size,(int)size);
  }
  public int getX(){
    return (int)x;
  }
  public int getY(){
    return (int)y;
  }
  public double getSizeX(){
    return x;
  }
}
