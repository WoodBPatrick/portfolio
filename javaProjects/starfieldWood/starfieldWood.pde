NormalParticle[] particles = new NormalParticle[100];
void setup(){
  size(800,800);
  for(int i=0;i<particles.length;i++)
    particles[i] = new NormalParticle(width/2, height/2);
}
void draw(){
  background(0);
  for(int i=0;i<100;i++){
    particles[i].move();
    particles[i].show();
    println(particles[0].getX());
  }
}

interface Particle{
  void move();
  void show();
}
