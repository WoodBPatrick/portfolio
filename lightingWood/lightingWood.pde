float startX=240;
float startY=445;
float endX=240;
float endY=0;
float startX2=360;
float startY2=445;
float endX2=360;
float endY2=0;
void setup()
{
    size(600,600);
    strokeWeight(3);
    background(0);
}

void draw()
{
  //Stickman
  stroke(255,255,255);fill(255,255,255);
  ellipse(300,450,30,30);line(290,480,240,445);ellipse(300,500,15,70);
  line(310,480,360,445);line(300,520,320,590);line(295,530,280,590);
  //random shade/tint of bue
  stroke(0,0,(int)(Math.random()*100)+155);fill(0,0,(int)(Math.random()*80)+175);
  //eyes
  ellipse(294,445,2,2);ellipse(306,445,2,2);
  //lighting
  if(1==1){
  while(endX<600){
    endX=startX+(int)(Math.random()*10);
    endY=startY+(int)(Math.random()*-19);
    line(startX,startY,endX,endY);
    startX=endX;
    startY=endY;
    endX2=startX2+(int)(Math.random()*-10);
    endY2=startY2+(int)(Math.random()*-19);
    line(startX2,startY2,endX2,endY2);
    startX2=endX2;
    startY2=endY2;
  }
  startX=240;
  startY=445;
  endX=240;
  endY=0;
  startX2=360;
  startY2=445;
  endX2=360;
  endY2=0;
  }
}
void mousePressed()
{
  //reseting lighting for another strike
  startX=240;
  startY=445;
  endX=240;
  endY=0;
  startX2=360;
  startY2=445;
  endX2=360;
  endY2=0;
}
{System.out.println("");}
