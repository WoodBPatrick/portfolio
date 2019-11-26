class Snow {
  private int x, y;
  private double speed;
  Snow() {
    this.x = (int)(Math.random()*1000)+1;
    this.y = (int)(Math.random()*20)*-20 ;
    this.speed=(double)(Math.random()*10)+1;
  }
  void move() {
    y+= speed;
  }
  void show() {
    ellipse(x, y, 5, 5);
  }
}
