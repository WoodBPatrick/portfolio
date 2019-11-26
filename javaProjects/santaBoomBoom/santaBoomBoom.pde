PImage santaimg;
Snow[] snowflakes = new Snow[300];
Santa santa;
void setup() {
  size(1000, 1000);
  santaimg = loadImage("santa_sleigh_PNG55.png");
  santaimg.resize(400, 350);
  santa = new Santa();
  for (int i = 0; i<snowflakes.length; i++ ) {
    snowflakes[i] = new Snow();
  }
}
void draw() {
  background(0);
  santa.move();
  for (int i = 0; i<snowflakes.length; i++ ) {
    snowflakes[i].move();
    snowflakes[i].show();
  }
  image(santaimg, santa.x, santa.y);
}
