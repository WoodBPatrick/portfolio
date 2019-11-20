class OddballParticle implements Particle
{
  double x, y, ang/*angle of the particles*/, speed, size, sizeGrowth;
  public OddballParticle(int x,int y){
    this.x=x;
    this.y=y;
    ang=(Math.PI/2)+Math.random()*20;
    speed=.5;
    size=10;
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
  public double getSizeX(){
    return x;
  }
  public void show(){
    fill((int)(Math.random()*150)+50,(int)(Math.random()*150)+50,(int)(Math.random()*150)+50);
    stroke((int)(Math.random()*150)+50,(int)(Math.random()*150)+50,(int)(Math.random()*150)+50);
    ellipse((int)x,(int)y,(int)(size+(int)(Math.random()*5)),(int)(size+(int)(Math.random()*5)));
  }
}
