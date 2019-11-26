class House{
  private int x;
  private boolean show;
  House(int x){
    this.x=x;
    this.show=true;
  }
  void show(){
    if(show){
    fill(255);
    rect(x,820,200,200);
    rect(x+133,750,40,70);
    triangle(x-50,850,x+100,750,x+250,850);
    rect(x+75,900,50,100);
    rect(x+20,900,50,50);
    rect(x+130,900,50,50);
    }
  }
  void rumble(){
    
  }
}
