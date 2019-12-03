class Moon{
  private int x,y;
  Moon(){
    this.x=-500;
    this.y=180;
  }
  public void move(){
    x+=2;
    if (x>width+180) {
      x=-500;
    }
  }
  public void show(){
    fill(240);
    ellipse(x,y,180,180);
  }
}
