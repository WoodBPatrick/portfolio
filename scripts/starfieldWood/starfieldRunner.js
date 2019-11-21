var particles,bang,odd,jumbo;
var restarting=false;
function setup() {
  createCanvas(1200,800);
  particles=[];
  bang = new bigBang(width/2, height/2);
  odd = new OddballParticle(width/2, height/2);
  jumbo = new JumboParticle(width/2, height/2);
  for (var i=0; i<800; i++) {
    particles[i] = new normalParticle(width/2, height/2);
  }
}
function draw() {
  background(255);
  if(!restarting){
      bang.move();
      bang.show();
      jumbo.move();
      jumbo.show();
      odd.move();
      odd.show();
      for(var i=0;i<particles.length;i++){
          particles[i].move();
          particles[i].show();
      }
      if(bang.getSizeX()>4000)
        restarting=true;
  }
    else if(restarting){
        bang.restartBang();
        bang.show();
        jumbo.restartBang();
        jumbo.show();
        odd.restartBang();
        odd.show();
        for(var i=0;i<particles.length;i++){
          particles[i].restartBang();
          particles[i].show();
        }
        if(bang.getSizeX()<0)
            restarting=false;
    }
}
