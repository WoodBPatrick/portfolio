void setup()
{
  size(400, 400);
  noLoop();
}
void draw()
{
  background(0);
  Die d1 = new Die(1, 1);
  d1.show();
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  float posX;
  float posY;
  Die(float x, float y) //constructor
  {
    posX=x;
    posY=y;
  }
  void roll()
  {
    //your code here
  }
  void show()
  {
    rect(posX, posY, 50, 50);
    fill(0);
    circle(25,25,7);
  }
}
