class OddballParticle implements Particle
{
  double x, y, ang/*angle of the particles*/, speed;
  int size;
  public OddballParticle(int x,int y){
    this.x=x;
    this.y=y;
    ang=(Math.PI/2)+Math.random()*20;
    speed=.5;
    size=10;
  }
  public void move(){
    x+=Math.cos(ang)*speed;
    y+=Math.sin(ang)*speed;
  }
  public void restartBang(){
    x-=Math.cos(ang)*speed;
    y-=Math.sin(ang)*speed;
  }
  public double getSizeX(){
    return x;
  }
  public void show(){
    fill((int)(Math.random()*150)+50,(int)(Math.random()*150)+50,(int)(Math.random()*150)+50);
    stroke((int)(Math.random()*150)+50,(int)(Math.random()*150)+50,(int)(Math.random()*150)+50);
    ellipse((int)x,(int)y,size+(int)(Math.random()*5),size+(int)(Math.random()*5));
  }
}
