float startX=0;
float startY=150;
float endX=0;
float endY=150;
void setup()
{
    size(300,300);
    strokeWeight(3);
    background(0);
    
}
void draw()
{
  stroke(0,0,(int)(Math.random()*100)+155);
  while(endX<300){
    endX=startX+(int)(Math.random()*10);
    endY=startY+(int)(Math.random()*19)-9;
    line(startX,startY,endX,endY);
    startX=endX;
    startY=endY;
  }
}
void mousePressed()
{
  startX=0;
  startY=(int)(Math.random()*300)+1;
  endX=0;
  endY=(int)(Math.random()*300)+1;
}
{System.out.println("");}
