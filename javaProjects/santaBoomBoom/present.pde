class Present{
  private int x,y;
  Present(int x){
    this.x=x;
    this.y=170;
  }
  void move(){
    y+=5;
  }
  void show(){
    fill(200,0,0);
    rect(x,y,30,30);
  }
}
