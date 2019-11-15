Particle[] particles = new Particle[800];
void setup() {
  size(800, 800);
  particles[0] = new OddballParticle(width/2, height/2);
  particles[1] = new JumboParticle(width/2, height/2);
  for (int i=2; i<particles.length; i++) {
    particles[i] = new NormalParticle(width/2, height/2);
  }
}
void draw() {
  background(0);
  for (int i=0; i<particles.length; i++) {
    particles[i].move();
    particles[i].show();
    //println(particles[0].getX());
  }
}

interface Particle {
  void move();
  void show();
}
