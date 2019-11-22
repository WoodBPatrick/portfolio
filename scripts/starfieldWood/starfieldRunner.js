var particles;
var restarting=false;
function setup() {
  var canvas = createCanvas(600, 600);
  canvas.parent('starfield');
  particles=[];
  particles[0] = new BigBang(width/2, height/2);
  particles[1] = new JumboParticle(width/2, height/2);
  particles[2] = new OddballParticle(width/2, height/2);
  for (var i=3; i<800; i++) {
    particles[i] = new normalParticle(width/2, height/2);
  }
}
function draw() {
  background(255);
  if(!restarting){
      for(var i=0;i<particles.length;i++){
          particles[i].move();
          particles[i].show();
      }
      if(particles[0].getSizeX()>2000)
        restarting=true;
  }
    else if(restarting){
        for(var i=0;i<particles.length;i++){
          particles[i].restartBang();
          particles[i].show();
        }
        if(particles[0].getSizeX()<0)
            restarting=false;
    }
}