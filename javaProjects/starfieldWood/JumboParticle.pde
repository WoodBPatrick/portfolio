class JumboParticle extends NormalParticle
{
  double x, y, ang/*angle of the particles*/, speed, size, sizeGrowth;
  int r, g, b;
  public JumboParticle(int x,int y){
   super(x,y);
   this.x=x;
   this.y=y;
   ang=(Math.PI/2)+Math.random()*20;
   speed=(Math.random()*.5)+.1;
   r=(int)(Math.random()*150)+50;    
   g=(int)(Math.random()*150)+50;
   b=(int)(Math.random()*150)+50;
   size=20;
   sizeGrowth=(Math.random()*.1);
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
}
