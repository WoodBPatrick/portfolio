class Snow implements snowInterface{
  private int x, y;
  private double speed;
  Snow() {
    this.x = (int)(Math.random()*1000)+1;
    this.y = (int)(Math.random()*1000)-40 ;
    this.speed=(double)(Math.random()*4)+5;
  }
  void move() {
    y+=speed;
    if(y>height+5){
      y=-20;
    }
  }
  void show() {
    fill(255);
    ellipse(x, y, 5, 5);
  }
}
