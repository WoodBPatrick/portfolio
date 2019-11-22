'use static';

var b;//Bacteria []
var x=0;
var y=0;
var dotPos;//the blue dot
var target=false;
var total=0;
var lost=false;
var highScore=0;
function setup()   
{     
  var canvas = createCanvas(800, 800);
  canvas.parent('chemo');
  b = [];
  for (var i=0; i<25; i++) {
    b[i] = new Bacteria(-40, -40);//creating all the bacteria
  }
  dotPos = createVector(Math.floor(Math.random()* 700) ,Math.floor(Math.random()*700));//creating the blue dot
}   
function draw()   
{    
  background(0);
  for (var i=0; i<25; i++) {
    b[i].move();
    b[i].show();
    if (b[i].ifLost())//checking if the player has lost
      b[i].lost();
  }
  b[0].curPoint();
  if (frameCount % 120 == 0) {
    target=!target;
    dotPos = createVector(Math.floor(Math.random()*700),Math.floor(Math.random()*700));
  }
  if (target) {
    fill(0, 0, Math.floor(Math.random()*100)+100);
    ellipse(dotPos.x, dotPos.y, 20, 20);
    
  }
}
function mousePressed(){
    if(!lost){
        if (target && Math.floor(dotPos.x-10) <= mouseX && Math.floor(dotPos.x+10) >= mouseX && Math.floor(dotPos.y-10) <= mouseY && Math.floor(dotPos.y+10) >= mouseY) {
            total++;
            highScore++;
        }
    }
    else
        reset();
}
function reset(){
    background(0);
    x=0;
    y=0;
    target=false;
    total=0;
    lost=false;
    setup();
    loop();
}
class Bacteria    
{
  constructor(x, y) {
    this.x=x+Math.floor(Math.random()*700);
    this.y=y+Math.floor(Math.random()*700);
    this.easing = 0.01;
  }
  move() {
    this.x+=(mouseX)*this.easing;
    this.y+=(mouseY)*this.easing;
    this.x+=(Math.floor(Math.random()*5)-2);
    this.y+=(Math.floor(Math.random()*5)-2);
    if (this.x>810)
      this.x=-10;
    if (this.y>810)
      this.y=-10;
    if (this.x<-10)
      this.x=810;
    if (this.y<-10)
      this.y=810;
  }
  ifLost() {
    return (mouseX<=this.x+10 && mouseX>=this.x-10 && mouseY<=this.y+10 && mouseY>=this.y-10);
  }
  lost() {
    lost=true;
    clear();
    background(255);
    noLoop();
    textSize(30);
    fill(0);
    text("Ha ha, you lose!", 280, 400);
    text("Final Points = "+total, 280, 50);
    text("Click to Restart", 290, 700);
  }
  curPoint(){
    textSize(20);
    fill(255);
    text("Total Points = "+total, 300, 20);
    text("Highest Score = "+highScore, 305, 65)
  }
  show() {
    fill(Math.floor(Math.random()*200)+50, Math.floor(Math.random()*200)+50, 0);
    ellipse(this.x, this.y, Math.floor(Math.random()*20)+10, Math.floor(Math.random()*20)+10);
  }
}