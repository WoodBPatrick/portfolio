'use static';

var startX=240;
var startY=445;
var endX=240;
var endY=0;
var startX2=360;
var startY2=445;
var endX2=360;
var endY2=0;
var timer=0;
function startingStickMan(){
  stroke(255,255,255); fill(255, 255, 255);
  /*head*/ellipse(300,450,30,30);/*left arm*/line(295,477,240,445);/*body*/ellipse(300,500,10,70);
  /*right arm*/line(300,480,360,445);/*right leg*/line(298,520,320,600);/*left leg*/line(298,530,280,600);
  //random shade/tint of bue
  stroke(0,0,(Math.random()*80)+175);fill(0,0,(Math.random()*80)+175);
  //eyes
  ellipse(294,445,2,2);ellipse(306,445,2,2);}
function setup(){
    createCanvas(600,600);
    strokeWeight(3);
}
function draw(){
  //lighting
  background(0);
  startingStickMan();
  while(endX<canvas.width){
    endX=startX+(Math.random()*10);
    endY=startY+(Math.random()*-19);
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
   if (frameCount % 5 == 0 && timer <= 0) {
        timer--;
        reset();
    }
}
function reset(){
  //resets lightning for another strike
  startX=240;
  startY=445;
  endX=240;
  endY=0;
  startX2=360;
  startY2=445;
  endX2=360;
  endY2=0;
  stroke(255,255,255);fill(255,255,255);
  startingStickMan();
}

