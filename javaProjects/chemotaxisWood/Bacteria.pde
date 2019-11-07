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
    if (x>810)
      x=-10;
    if (y>810)
      y=-10;
    if (x<-10)
      x=810;
    if (y<-10)
      y=810;
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
    fill(0);
    text("Ha ha, you lose!", 280, 400);
    text("Final Points = "+total, 280, 50);
  }
  public void curPoint(){
    textSize(20);
    fill(255);
    text("Total Points = "+total, 300, 20);
  }
  public void show() {
    fill((int)(Math.random()*200)+50, (int)(Math.random()*200)+50, 0);
    ellipse(x, y, (int)(Math.random()*20)+10, (int)(Math.random()*20)+10);
  }
}
