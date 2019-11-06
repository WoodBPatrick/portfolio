Bacteria[] b;
int x;
int y;
void setup()   
{     
  size(800, 800);
  b = new Bacteria[25];
  for(int i=0;i<25;i++) {
    b[i] = new Bacteria(-40, -40);
  }
  
}   
void draw()   
{    
  background(0);
  for (int i=0; i<25; i++) {
    b[i].move();
    b[i].show();
    if (b[i].ifLost() == true)
      b[i].lost();
  }
  for(int i=0;i<24;i++){
    if(b[i].getX()==b[i+1].getX()){
      println("HI");
    }
      
  }
}
