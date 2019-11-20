class bigBang {
  constructor(x, y) {
    this.x=x;
    this.y=y;
    this.speed=.7;
    this.ang=(Math.PI*2);
    this.sizeX=0;
    this.sizeY=0;
  }
  move() {
    this.sizeX+=this.ang*this.speed;
    this.sizeY+=this.ang*thi.speed;
  }
  restartBang(){
    this.sizeX-=this.ang*this.speed;
    this.sizeY-=this.ang*this.speed;
  }
  show() {
    fill(0);
    stroke(255);
    ellipse(this.x, this.y, Math.floor(this.sizeX), Math.floor(this.sizeY));
  }
  getSizeX(){
    return this.sizeX;
  }
  getSizeY(){
    return this.sizeY;
  }
}