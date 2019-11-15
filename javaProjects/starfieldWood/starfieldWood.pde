Particle[] particles = new Particle[800];
bigBang restart;
boolean click, started=false;
void setup() {
  size(800, 800);
  restart = new bigBang(width/2, height/2, 5000.0, 5000.0);
  particles[0] = new bigBang(width/2, height/2);
  particles[1] = new OddballParticle(width/2, height/2);
  particles[2] = new JumboParticle(width/2, height/2);
  for (int i=3; i<particles.length; i++) {
    particles[i] = new NormalParticle(width/2, height/2);
  }
}
void draw() {
  background(255);
  for (int i=0; i<particles.length; i++) {
    if (click) {
      particles[i].move();
      particles[i].show();
      started=true;
    } else if (started) {
      restart.restartBang();
    }
  }
}
void mouseReleased() {
  if (!click)
    click=true;
  else
    click=false;
}
interface Particle {
  void move();
  void show();
}
