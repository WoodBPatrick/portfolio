class Bacteria    
{
  private int x;
  private int y;
  private int rColor;
  public Bacteria(int x, int y) {
    this.x=x;
    this.y=y;
    rColor=(int)(Math.random()*235)+10;
  }
  public void move() {
    if (x>800)
      x+=(int)(Math.random()*-8);
    else if (y>800)
      y+=(int)(Math.random()*-8);
    else if (x<0)
      x+=(int)(Math.random()*8);
    else if (y<0)
      y+=(int)(Math.random()*8);
    else{
      x+=(int)(Math.random()*8)-2;
      y+=(int)(Math.random()*8)-2;
    }
  }
  public void show() {
    fill(rColor);
    ellipse(x, y, 30, 30);
  }
}
