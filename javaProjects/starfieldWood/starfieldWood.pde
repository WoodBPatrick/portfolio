Particle[] particles = new Particle[800];
bigBang restart;
boolean restarting=false;
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
    if (particles[0].getSizeX() <= 1000) {
      particles[i].move();
      particles[i].show();
    } else if (particles[0].getSizeX() > 1000) {
      particles[i].restartBang();
      particles[i].show();
    }
  }
}
interface Particle {
  void move();
  void show();
  void restartBang();
  double getSizeX();
}
