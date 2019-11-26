PImage santaimg;
PImage presentimg;
Present[] present = new Present[3];
snowInterface[] flakes = new Snow[300];
Santa santa;
House[] houses = new House[3];
void setup() {
  size(1000, 1000);
  santaimg = loadImage("santa_sleigh_PNG55.png");
  presentimg = loadImage("gift.png");
  presentimg.resize(40,40);
  santaimg.resize(400, 350);
  santa = new Santa();
  present[0] = new Present(183);
  present[1] = new Present(533);
  present[2] = new Present(883);
  for (int i = 0; i<flakes.length; i++ ) {
    flakes[i] = new Snow();
  }
  houses[0] = new House(50);
  houses[1] = new House(400);
  houses[2] = new House(750);
}
void draw() {
  background(0);
  santa.move();
  image(santaimg, santa.x, santa.y);
  if(santa.x>75){
    present[0].move();
    image(presentimg, present[0].x,present[0].y);
  }
  if(present[0].y>1000){
    houses[0].show=false;
  }
  if(santa.x>480){
    present[1].move();
    image(presentimg, present[1].x,present[1].y);
  }
  if(present[1].y>1000){
    houses[1].show=false;
  }
  if(santa.x>750){
    present[2].move();
    image(presentimg, present[2].x,present[2].y);
  }
  if(present[2].y>1000){
    houses[2].show=false;
  }
  for (int i = 0; i<flakes.length; i++ ) {
    flakes[i].move();
    flakes[i].show();
  }
  for (int i = 0; i<houses.length; i++ ) 
    houses[i].show();
}
interface snowInterface{
  void move();
  void show();
}
