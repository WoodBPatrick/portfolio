class OddballParticle implements Particle
{
  double x, y, ang/*angle of the particles*/, speed;
  int r, g, b;
  int size;
  public OddballParticle(int x,int y){
    this.x=x+Math.random()*20;
    this.y=y+Math.random()*20;
    ang=(Math.PI/2)+Math.random()*20;
    speed=(Math.random()*1.5)+.3;
    r=(int)(Math.random()*150)+50;
    g=(int)(Math.random()*150)+50;
    b=(int)(Math.random()*150)+50;
    size=(int)(Math.random()*8)+3;
  }
  public void move(){
    x+=Math.cos(ang)*speed;
    y+=Math.sin(ang)*speed;
    println(Math.cos(ang)*speed);
    if(x>670 || x<130 || y>670 || y<130)
      speed*=-1;
  }
  public void show(){
    fill(r,g,b);
    stroke(r,g,b);
    ellipse((int)x,(int)y,size,size);
  }
}
