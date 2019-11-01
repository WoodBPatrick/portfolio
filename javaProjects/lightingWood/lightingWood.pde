float startX=240;
float startY=445;
float endX=240;
float endY=0;
float startX2=360;
float startY2=445;
float endX2=360;
float endY2=0;
int startTime;
void startingStickMan(){
  stroke(255,255,255);fill(255,255,255);
  /*head*/ellipse(300,450,30,30);/*left arm*/line(295,477,240,445);/*body*/ellipse(300,500,10,70);
  /*right arm*/line(300,480,360,445);/*right leg*/line(298,520,320,600);/*left leg*/line(298,530,280,600);
  //random shade/tint of bue
  stroke(0,0,(int)(Math.random()*80)+175);fill(0,0,(int)(Math.random()*80)+175);
  //eyes
  ellipse(294,445,2,2);ellipse(306,445,2,2);}
void setup()
{
    size(600,600);
    strokeWeight(3);
    background(0);
}
void draw()
{
  //lighting
  while(endX<width){
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
  //timer
  int time = millis() - startTime; 
  if (time > 50) {
    startTime = millis();
    reset();
  }
}
void reset(){
  //resets lightning for another strike
  startX=240;
  startY=445;
  endX=240;
  endY=0;
  startX2=360;
  startY2=445;
  endX2=360;
  endY2=0;
  clear();
  stroke(255,255,255);fill(255,255,255);
  /*head*/ellipse(300,450,30,30);/*left arm*/line(295,477,240,445);/*body*/ellipse(300,500,10,70);
  /*right arm*/line(300,480,360,445);/*right leg*/line(298,520,320,600);/*left leg*/line(298,530,280,600);
  //random shade/tint of bue
  stroke(0,0,(int)(Math.random()*80)+175);fill(0,0,(int)(Math.random()*80)+175);
  //eyes
  ellipse(294,445,2,2);ellipse(306,445,2,2);
}
{System.out.println("");}
