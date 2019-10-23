Die[] die = new Die[17];
int total,avgTotal,numRolls;
void setup()
{
  size(400, 400);
  noLoop();
}
void draw()
{
  background(0);
  //creating all the die
  for(int i=0;i<8;i++){
    die[i] = new Die(i*50,i*50);
    die[i].show();
    total+=die[i].getRand();
  }
  int j=350;
  int g=0;
  for(int i=0;i<8;i++){
    die[i] = new Die(j,g);
    j-=50;g+=50;
    die[i].show();
    total+=die[i].getRand();
  }
  //displaying the data
  textSize(20);
  fill(255);
  text("Total="+total, 154, 350);
  numRolls++;
  avgTotal=total/numRolls;
  text("Average Total="+avgTotal, 134, 380);
  total=0;
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  private int posX;
  private int posY;
  private int rand;
  public Die(int x, int y) //constructor
  {
    posX=x;
    posY=y;
    rand=(int)(Math.random()*6)+1;
  }
  public int getRand() {
    return rand;
  }
  public void roll()
  {
    //your code here
  }
  public void show()
  {
    if (mousePressed || 1==1) {
      if (rand==1) {
        fill(255, 255, 255);
        rect(posX, posY, 50, 50, 7);
        fill((int)(Math.random()*200), (int)(Math.random()*200), (int)(Math.random()*200));
        ellipse(posX+25, posY+25, 7, 7);
      }
    }
    if (mousePressed || 1==1) {
      if (rand==2) {
        fill(255, 255, 255);
        rect(posX, posY, 50, 50 ,7);
        fill((int)(Math.random()*200), (int)(Math.random()*200), (int)(Math.random()*200));
        ellipse(posX+12, posY+12, 7, 7);
        ellipse(posX+37, posY+37, 7, 7);
      }
    }
    if (mousePressed || 1==1) {
      if (rand==3) {
        fill(255, 255, 255);
        rect(posX, posY, 50, 50, 7);
        fill((int)(Math.random()*200), (int)(Math.random()*200), (int)(Math.random()*200));
        ellipse(posX+12, posY+12, 7, 7);
        ellipse(posX+25, posY+25, 7, 7);
        ellipse(posX+37, posY+37, 7, 7);
      }
    }
    if (mousePressed || 1==1) {
      if (rand==4) {
        fill(255, 255, 255);
        rect(posX, posY, 50, 50, 7);
        fill((int)(Math.random()*200), (int)(Math.random()*200), (int)(Math.random()*200));
        ellipse(posX+12, posY+12, 7, 7);
        ellipse(posX+12, posY+37, 7, 7);
        ellipse(posX+37, posY+12, 7, 7);
        ellipse(posX+37, posY+37, 7, 7);
      }
    }
    if (mousePressed || 1==1) {
      if (rand==5) {
        fill(255, 255, 255);
        rect(posX, posY, 50, 50, 7);
        fill((int)(Math.random()*200), (int)(Math.random()*200), (int)(Math.random()*200));
        ellipse(posX+12, posY+12, 7, 7);
        ellipse(posX+12, posY+37, 7, 7);
        ellipse(posX+25, posY+25, 7, 7);
        ellipse(posX+37, posY+12, 7, 7);
        ellipse(posX+37, posY+37, 7, 7);
      }
    }
    if (mousePressed || 1==1) {
      if (rand==6) {
        fill(255, 255, 255);
        rect(posX, posY, 50, 50, 7);
        fill((int)(Math.random()*200), (int)(Math.random()*200), (int)(Math.random()*200));
        ellipse(posX+12, posY+12, 7, 7);
        ellipse(posX+12, posY+37, 7, 7);
        ellipse(posX+12, posY+25, 7, 7);
        ellipse(posX+37, posY+25, 7, 7);
        ellipse(posX+37, posY+12, 7, 7);
        ellipse(posX+37, posY+37, 7, 7);
      }
    }
  }
}
