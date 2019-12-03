//By Brian W and Yousif A
 
import processing.sound.*;
SoundFile boom1;
SoundFile boom2;
SoundFile boom3;
PImage santaimg;
PImage presentimg;
PImage explosionimg;
SoundFile[] kaboom = new SoundFile[3];
boolean[] showExpl = new boolean[3];
Present[] present = new Present[3];
snowInterface[] flakes = new Snow[300];
House[] houses = new House[3];
Moon moon;
Santa santa;
void setup() {
  size(1000, 1000);
  for(int x = 0; x< 3; x++){
  kaboom[x] = new SoundFile(this,"Grenade-SoundBible.com-2124844747.mp3");
  }
  santaimg = loadImage("santa_sleigh_PNG55.png");
  presentimg = loadImage("gift.png");
  explosionimg = loadImage("explosion-fire-fire.jpg");
  presentimg.resize(40, 40);
  santaimg.resize(400, 350);
  explosionimg.resize(300, 500);
  santa = new Santa();
  moon = new Moon();
  present[0] = new Present(183);
  present[1] = new Present(533);
  present[2] = new Present(883);
  for (int i = 0; i<flakes.length; i++ ) {
    flakes[i] = new Snow();
  }
  for (int i = 0; i<showExpl.length; i++ )
    showExpl[i] = true;
  houses[0] = new House(50);
  houses[1] = new House(400);
  houses[2] = new House(750);
}
void draw() {
  background(5);
  //shows santa
  moon.move();
  moon.show();
  santa.move();
  image(santaimg, santa.x, santa.y);
  //shows presents
  if (santa.x>75) {
    present[0].move();
    image(presentimg, present[0].x, present[0].y);
  }
  if (santa.x>480) {
    present[1].move();
    image(presentimg, present[1].x, present[1].y);
  }
  if (santa.x>750) {
    present[2].move();
    image(presentimg, present[2].x, present[2].y);
  }
  //show houses
  for (int i = 0; i<houses.length; i++ ) 
    houses[i].show();
  if (present[0].y>1000) {
    houses[0].show=false;
    if (showExpl[0])
      image(explosionimg, houses[0].x-50, 500);
      kaboom[0].play();
  }
  if (present[1].y>1000) {
    houses[1].show=false;
    if (showExpl[1])
      image(explosionimg, houses[1].x-50, 500);
      kaboom[0].stop();
      kaboom[1].play();
  }
  if (present[2].y>1000) {
    houses[2].show=false;
    if (showExpl[2])
      image(explosionimg, houses[2].x-50, 500);
      kaboom[1].stop();
      kaboom[2].play();
  }
  for (int i=0; i<present.length; i++) {
    if (present[i].y>1500)
      showExpl[i]=false;
      
      if(present[2].y>1500)
      kaboom[2].stop();
  }
  //shows snowflakes
  for (int i = 0; i<flakes.length; i++ ) {
    flakes[i].move();
    flakes[i].show();
  }
  if(santa.x==width+3000)
    for(int i=0;i<present.length;i++){
      present[i].y=170;
      showExpl[i]=true;
      houses[i].show=true;
    }
    for(int x = 0; x< 3; x++){
    println("boom # " +x+""+kaboom[x].isPlaying());
      
    
    }
}
interface snowInterface {
  void move();
  void show();
}
