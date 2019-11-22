class OddballParticle 
{
  constructor(x,y){
    this.x=x;
    this.y=y;
    this.ang=(Math.PI/2)+Math.random()*20;
    this.speed=.5;
    this.size=10;
    this.sizeGrowth=(Math.random()*.05)-.02;
  }
  move(){
    this.x+=Math.cos(this.ang)*this.speed;
    this.y+=Math.sin(this.ang)*this.speed;
    this.size+=this.sizeGrowth;
  }
  restartBang(){
    this.x-=Math.cos(this.ang)*this.speed;
    this.y-=Math.sin(this.ang)*this.speed;
    this.size-=this.sizeGrowth;
  }
  getSizeX(){
    return this.x;
  }
  show(){
    fill(Math.floor(Math.random()*150)+50,Math.floor(Math.random()*150)+50, Math.floor(Math.random()*150)+50);
    stroke(Math.floor(Math.random()*150)+50,Math.floor(Math.random()*150)+50, Math.floor(Math.random()*150)+50);
    ellipse(Math.floor(this.x),Math.floor(this.y),Math.floor(this.size+Math.floor(Math.random()*5)), Math.floor(this.size+Math.floor(Math.random()*5)));
  }
}