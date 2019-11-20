var particles;
var restarting=false;
function setup() {
  createCanvas(800,800);
  particles=[];
  var bang = new bigBang(width/2, height/2);
  var odd = new OddballParticle(width/2, height/2);
  var jumbo = new JumboParticle(width/2, height/2);
  for (var i=0; i<800; i++) {
    particles[i] = new normalParticle(width/2, height/2);
  }
}
function draw() {
  background(255);
  for (var i=0; i<particles.length; i++) {
    if (!restarting) {
      particles[i].move();
      particles[i].show();
      if (bang.getSizeX() > 4000)
        restarting = true;
    } else if (restarting) {
      particles[i].restartBang();
      particles[i].show();
      if (particles[0].getSizeX() < 0)
        restarting = false;
    }
  }
}
