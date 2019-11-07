Bacteria[] b;
int x;
int y;
PVector dotPos;
boolean target=false;
void setup()   
{     
  size(800, 800);
  b = new Bacteria[25];
  for (int i=0; i<25; i++) {
    b[i] = new Bacteria(-40, -40);
  }
  dotPos = new PVector((int)(Math.random()*700)+10,(int)(Math.random()*700)+10);
}   
void draw()   
{    
  background(0);
  for (int i=0; i<25; i++) {
    b[i].move();
    b[i].show();
    if(abs(b[i].x-dotPos.x)<5 && abs(b[i].y-dotPos.y)<5){
      //total++;
    }
    if (b[i].ifLost() == true)
      b[i].lost();
  }
  if(frameCount % 120 == 0){
    target=!target;
    dotPos = new PVector((int)(Math.random()*700)+10,(int)(Math.random()*700)+10);
  }
  if(target){
    fill((int)(Math.random()*200)+50, 0, 0);
    ellipse(dotPos.x, dotPos.y, 20, 20);
    println(""+x);
  }
}
