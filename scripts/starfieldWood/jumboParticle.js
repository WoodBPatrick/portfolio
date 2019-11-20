class JumboParticle {
  constructor(x,y){
   this.x=x;
   this.y=y;
   this.ang=(Math.PI/2)+Math.random()*20;
   this.speed=(Math.random()*.5)+.1;
   this.r=Math.floor(Math.random()*150)+50;    
   this.g=Math.floor(Math.random()*150)+50;
   this.b=Math.floor(Math.random()*150)+50;
   this.size=20;
   this.sizeGrowth=(Math.random()*.1);
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
  show(){
    fill(this.r,this.g,this.b);
    stroke(this.r,this.g,this.b);
    //fill((int)(Math.random()*150)+50,(int)(Math.random()*150)+50,(int)(Math.random()*150)+50);
    //stroke((int)(Math.random()*150)+50,(int)(Math.random()*150)+50,(int)(Math.random()*150)+50);
    ellipse(Math.floor(this.x),Math.floor(this.y),Math.floor(this.size), Math.floor(this.size));
  }
}