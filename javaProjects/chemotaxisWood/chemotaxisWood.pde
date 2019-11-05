Bacteria[] b;
int x;
int y;
void setup()   
{     
  size(800, 800);
  b = new Bacteria[10];
  for (int i=0; i<10; i++) {
    b[i] = new Bacteria(width/2, height/2);
  }
}   
void draw()   
{    
  background(0);
  for (int i=0; i<10; i++) {
    b[i].move();
    b[i].show();
  }
}
