class DisplayDraw{
  private int x, y;
  public DisplayDraw(int x, int y) {
    this.x=x;
    this.y=y;
  }
  public DisplayDraw(){}
  public void display() {
    //fill(255, 255, 255, 0); stroke(255); ellipse(width/2, height/2, 648, 648);
    fill(128);stroke(128);ellipse(width/2, height/2, 20, 20);
    rect(width/2-5, height/2, 10, 400);
  }
}
  
