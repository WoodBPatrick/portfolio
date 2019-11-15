class JumboParticle extends NormalParticle
{
  double x, y, ang/*angle of the particles*/, speed;
  int r, g, b;
  int size=20;
  public JumboParticle(int x,int y){
   super(x,y);
   this.x=x;
   this.y=y;
   ang=(Math.PI/2)+Math.random()*20;
   speed=(Math.random()*.5)+.1;
   r=(int)(Math.random()*150)+50;    
   g=(int)(Math.random()*150)+50;
   b=(int)(Math.random()*150)+50;
  }
  public void move(){
    x+=Math.cos(ang)*speed;
    y+=Math.sin(ang)*speed;
    /*if(x>width+size || x<0-size || y>height+size || y<0-size){
      x=width/2;
      y=height/2;
    }*/
  }
  public void show(){
    fill(r,g,b);
    stroke(r,g,b);
    ellipse((int)x,(int)y,20,20);
  }
}
