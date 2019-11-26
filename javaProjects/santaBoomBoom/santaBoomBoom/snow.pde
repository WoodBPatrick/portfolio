class Snow implements snowInterface{
  private int x, y;
  private double speed;
  Snow() {
    this.x = (int)(Math.random()*1000)+1;
    this.y = (int)(Math.random()*20)*-20 ;
    this.speed=(double)(Math.random()*8)+5;
  }
  void move() {
    y+=speed;
    if(y>height+5){
      y=(int)(Math.random()*20)*-20 ;
      this.speed=(double)(Math.random()*10)+5;
    }
  }
  void show() {
    ellipse(x, y, 5, 5);
  }
}
