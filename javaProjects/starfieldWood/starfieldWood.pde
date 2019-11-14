NormalParticle[] particles = new NormalParticle[800];
OddballParticle[] oddParticles = new OddballParticle[50];
void setup(){
  size(800,800);
  for(int i=0;i<particles.length;i++)
    particles[i] = new NormalParticle(width/2, height/2);
  for(int i=0;i<oddParticles.length;i++)
    oddParticles[i] = new OddballParticle(width/2, height/2);
}
void draw(){
  background(0);
  for(int i=0;i<particles.length;i++){
    particles[i].move();
    particles[i].show();
    //println(particles[0].getX());
  }
  for(int i=0;i<oddParticles.length;i++){
    oddParticles[i].move();
    oddParticles[i].show();
  }
}

interface Particle{
  void move();
  void show();
}
