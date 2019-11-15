class OddballParticle implements Particle
{
  double x, y, ang/*angle of the particles*/, speed;
  int size;
  public OddballParticle(int x,int y){
    this.x=x+Math.random()*20;
    this.y=y+Math.random()*20;
    ang=(Math.PI/2)+Math.random()*20;
    speed=1;
    size=5;
  }
  public void move(){
    x+=(Math.random()*5)-3;
    y+=(Math.random()*5)-3;
    if(x>width+size || x<0-size || y>height+size || y<0-size){
      x=width/2;
      y=height/2;
    }
  }
  public void show(){
    fill((int)(Math.random()*150)+50,(int)(Math.random()*150)+50,(int)(Math.random()*150)+50);
    stroke((int)(Math.random()*150)+50,(int)(Math.random()*150)+50,(int)(Math.random()*150)+50);
    ellipse((int)x,(int)y,size,size);
  }
}
