class Bacteria    
{
  private int x;
  private int y;
  float easing = 0.05;
  public Bacteria(int x, int y) {
    this.x=x+(int)(Math.random()*700);
    this.y=y+(int)(Math.random()*700);
  }
  public void move() {
    float targetX = mouseX;
    x += (targetX-x) * easing;

    float targetY = mouseY;
    y += (targetY-y) * easing;
  }
  public void changeMove(boolean x){
    if(x)
    {
      y+=30;
      x+=30;
    }
  }
  public boolean ifLost() {
    if (mouseX == x && mouseY == y) 
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
    ellipse(x, y, (int)(Math.random()*5)+10, (int)(Math.random()*5)+10);
  }
  public int getX() {
    return x;
  }
  public int gety() {
    return y;
  }
}
