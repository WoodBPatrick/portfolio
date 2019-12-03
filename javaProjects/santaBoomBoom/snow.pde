class Snow implements snowInterface{
  private int x, y;
  private double speed;
  Snow() {
    this.x = (int)(Math.random()*1300)-300;
    this.y = (int)(Math.random()*1000)-40 ;
    this.speed=(double)(Math.random()*4)+5;
  }
  void move() {
    y+=speed;
    x+=1;
    if(y>height+5){
      y=-20;
      x = (int)(Math.random()*1300)-300;
    }
  }
  void show() {
    fill(255);
    ellipse(x, y, 5, 5);
  }
}
