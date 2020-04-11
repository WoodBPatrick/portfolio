class Tendril {
  private int SEG_LENGTH=4; //length of each segment in the tendril
  private int myNumSegments;
  private double myAngle, myX, myY;
  private Cluster c;
  public Tendril(int numberSegments, double theta, double x, double y) {
    myNumSegments=numberSegments;
    myX=x;
    myY=y;
    myAngle=theta;
  }
  public void show() {
    if (myNumSegments>40)
      stroke(100, 0, 0);
    else if (myNumSegments>20)
      stroke(0, 100, 0);
    else
      stroke(0, 0, 100);
    double startX=myX, startY=myY;
    for (int i=0; i<myNumSegments; i++) {
      myAngle+=(Math.random()*.4)-.2;
      double endX=startX+(Math.cos(myAngle)*SEG_LENGTH);
      double endY=startY+(Math.sin(myAngle)*SEG_LENGTH);
      line((float)startX, (float)startY, (float)endX, (float)endY);
      startX=endX;
      startY=endY;
    }
    if (myNumSegments>=0) 
      c = new Cluster(myNumSegments-23, startX, startY);
  }
}
