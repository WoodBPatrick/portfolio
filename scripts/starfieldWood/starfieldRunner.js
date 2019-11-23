var particles;
var restarting,stopped;
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
          if(!stopped)
            particles[i].move();
          particles[i].show();
      }
      if(particles[0].getSizeX()>2000)
        restarting=true;
  }
    else if(restarting){
        for(var i=0;i<particles.length;i++){
          if(!stopped)
            particles[i].restartBang();
          particles[i].show();
        }
        if(particles[0].getSizeX()<0)
            restarting=false;
    }
}
function mouseReleased(){
   if(mouseX>=0 && mouseX<=width && mouseY>=0 && mouseY<=height) 
        if(!stopped)
            stopped=true;
        else
            stopped=false;
}