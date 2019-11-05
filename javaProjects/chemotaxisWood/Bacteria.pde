class Bacteria    
{
  private float x;
  private float y;
  float easing = 0.05;
  public Bacteria(float x, float y) {
    this.x=x+(int)(Math.random()*700);
    this.y=y+(int)(Math.random()*700);
  }
  public void move() {
    float targetX = mouseX;
    float dx = targetX - x;
    x += dx * easing;

    float targetY = mouseY;
    float dy = targetY - y;
    y += dy * easing;
  }
  public boolean ifLost(){
    if(mouseX == x && mouseY == y){
      println("What up");
      return true;}
    else
      return false;
  }
  public void lost(){
    background(255);
    noLoop();
  }
  public void show() {
    fill((int)(Math.random()*200)+50, (int)(Math.random()*200)+50, 0);
    ellipse(x, y, (int)(Math.random()*10)+10, (int)(Math.random()*10)+10);
  }
}
