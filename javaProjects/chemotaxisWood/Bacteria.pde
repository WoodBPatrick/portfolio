class Bacteria    
{
  private int x;
  private int y;
  float easing = 0.01;
  public Bacteria(int x, int y) {
    this.x=x+(int)(Math.random()*700);
    this.y=y+(int)(Math.random()*700);
  }
  public void move() {
    x+=(mouseX)*easing;
    y+=(mouseY)*easing;
    x+=((int)(Math.random()*5)-2);
    y+=((int)(Math.random()*5)-2);
    if (x>815)
      x=-20;
    if (y>815)
      y=-20;
    if (x<-20)
      x=815;
    if (y<-20)
      y=815;
  }
  public boolean ifLost() {
    if (mouseX<=x+10 && mouseX>=x-10 && mouseY<=y+10 && mouseY>=y-10) 
      return true;
    else
    return false;
  }
  public void lost() {
    clear();
    background(255);
    noLoop();
    textSize(30);
    text("Ha ha, you lose!", 280, 400);
  }
  public void show() {
    fill((int)(Math.random()*200)+50, (int)(Math.random()*200)+50, 0);
    ellipse(x, y, (int)(Math.random()*20)+10, (int)(Math.random()*20)+10);
  }
  public int getX() {
    return x;
  }
  public int gety() {
    return y;
  }
}
