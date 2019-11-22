'use static';
var die = new Array(17);
var total=0, highestTotal=0, pressedCount=0, money=100, moneyWon=0;
var gameOver=false;
function setup()
{
  var canvas = createCanvas(400, 400);
  canvas.parent('dice');
  noLoop();
}
function draw()
{
  background(0);
  //creating all the die
  for (var i=0; i<8; i++) {
    die[i] = new Die(i*50, i*50);
    die[i].show();
    total+=die[i].getRand();
  }
  var j=350;
  var g=0;
  for (var i=0; i<8; i++) {
    die[i] = new Die(j, g);
    j-=50;
    g+=50;
    die[i].show();
    total+=die[i].getRand();
  }
  //displaying the data
  textSize(15);
  fill(255);
  text("Total = "+total, 165, 330);
  if (total>highestTotal)
    highestTotal=total;
  text("To win $1,000,000; you must", 100, 20);
  text("achieve higher than 75", 122, 40);
  text("Win $20 by getting higher", 115, 70);
  text("than 69", 175, 90);
  textSize(15);
  text("Number of", 5, 185);
  text("Mouse Clicks = "+pressedCount, 5, 205);
  text("Money = $"+money, 260, 185);
  text("Money Won = $"+moneyWon, 260, 205);
  textSize(20);
  text("Highest Total = "+highestTotal, 122, 350);
  // Checking if you won or if you lost
  if(total>69){
    money+=20;
    moneyWon+=20;}
  total=0;
  if (highestTotal>75) {
    youWin();
    gameOver=true;
  }
  if(money<1){
    youLose();
    gameOver=true;
  }
}
function mousePressed()
{
  if(!gameOver){
    pressedCount++;
    money--;
    redraw();
}
}
function youLose(){
  clear();
  background((int)(Math.random()*180)+20, (int)(Math.random()*180)+20, (int)(Math.random()*180)+20);
  textSize(50);
  text("Congratulations!", 16, 200);
  textSize(60);
  text("You Lose!", 70, 260);
}
function youWin(){
  clear();
  background((int)(Math.random()*180)+20, (int)(Math.random()*180)+20, (int)(Math.random()*180)+20);
  textSize(49);
  text("Congratulations!", 16, 200);
  textSize(60);
  text("You Win", 85, 260);
  textSize(43);
  text("One Million Dollars!", 14, 300);
}
class Die //models one single dice cube
{
  constructor(x, y) //constructor
  {
    this.posX=x;
    this.posY=y;
    this.rand=Math.floor(Math.random()*6)+1;
  };
  getRand() {
    return this.rand;
  };
  show()
  {
    if (mousePressed || 1==1) {
      if (this.rand==1) {
        fill(255, 255, 255);
        rect(this.posX, this.posY, 50, 50, 7);
        fill(Math.floor(Math.random()*200), Math.floor(Math.random()*200), Math.floor(Math.random()*200));
        ellipse(this.posX+25, this.posY+25, 7, 7);
      }
    }
    if (mousePressed || 1==1) {
      if (this.rand==2) {
        fill(255, 255, 255);
        rect(this.posX, this.posY, 50, 50, 7);
        fill(Math.floor(Math.random()*200), Math.floor(Math.random()*200), Math.floor(Math.random()*200));
        ellipse(this.posX+12, this.posY+12, 7, 7);
        ellipse(this.posX+37, this.posY+37, 7, 7);
      }
    }
    if (mousePressed || 1==1) {
      if (this.rand==3) {
        fill(255, 255, 255);
        rect(this.posX, this.posY, 50, 50, 7);
        fill(Math.floor(Math.random()*200), Math.floor(Math.random()*200), Math.floor(Math.random()*200));
        ellipse(this.posX+12, this.posY+12, 7, 7);
        ellipse(this.posX+25, this.posY+25, 7, 7);
        ellipse(this.posX+37, this.posY+37, 7, 7);
      }
    }
    if (mousePressed || 1==1) {
      if (this.rand==4) {
        fill(255, 255, 255);
        rect(this.posX, this.posY, 50, 50, 7);
        fill(Math.floor(Math.random()*200), Math.floor(Math.random()*200), Math.floor(Math.random()*200));
        ellipse(this.posX+12, this.posY+12, 7, 7);
        ellipse(this.posX+12, this.posY+37, 7, 7);
        ellipse(this.posX+37, this.posY+12, 7, 7);
        ellipse(this.posX+37, this.posY+37, 7, 7);
      }
    }
    if (mousePressed || 1==1) {
      if (this.rand==5) {
        fill(255, 255, 255);
        rect(this.posX, this.posY, 50, 50, 7);
        fill(Math.floor(Math.random()*200), Math.floor(Math.random()*200), Math.floor(Math.random()*200));
        ellipse(this.posX+12, this.posY+12, 7, 7);
        ellipse(this.posX+12, this.posY+37, 7, 7);
        ellipse(this.posX+25, this.posY+25, 7, 7);
        ellipse(this.posX+37, this.posY+12, 7, 7);
        ellipse(this.posX+37, this.posY+37, 7, 7);
      }
    }
    if (mousePressed || 1==1) {
      if (this.rand==6) {
        fill(255, 255, 255);
        rect(this.posX, this.posY, 50, 50, 7);
        fill(Math.floor(Math.random()*200), Math.floor(Math.random()*200), Math.floor(Math.random()*200));
        ellipse(this.posX+12, this.posY+12, 7, 7);
        ellipse(this.posX+12, this.posY+37, 7, 7);
        ellipse(this.posX+12, this.posY+25, 7, 7);
        ellipse(this.posX+37, this.posY+25, 7, 7);
        ellipse(this.posX+37, this.posY+12, 7, 7);
        ellipse(this.posX+37, this.posY+37, 7, 7);
      }
    }
  };
}