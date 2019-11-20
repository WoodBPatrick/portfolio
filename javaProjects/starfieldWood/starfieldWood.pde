Particle[] particles = new Particle[800];
boolean restarting=false;
void setup() {
  fullScreen();
  particles[0] = new bigBang(width/2, height/2);
  particles[1] = new OddballParticle(width/2, height/2);
  particles[2] = new JumboParticle(width/2, height/2);
  //particles[3] = new shootingStar();
  for (int i=3; i<particles.length; i++) {
    particles[i] = new NormalParticle(width/2, height/2);
  }
}
void draw() {
  background(255);
  for (int i=0; i<particles.length; i++) {
    if (!restarting) {
      particles[i].move();
      particles[i].show();
      if (particles[0].getSizeX() > 4000)
        restarting = true;
    } else if (restarting) {
      particles[i].restartBang();
      particles[i].show();
      if (particles[0].getSizeX() < 0)
        restarting = false;
    }
  }
}
interface Particle {
  void move();
  void show();
  void restartBang();
  double getSizeX();
}
