public class Cluster {
  public final static int NUM_STEMS = 7; //number of tendrils per cluster
  private int len;
  private double x, y;
  public Cluster(int len, double x, double y) {
    for (int i=1; i<NUM_STEMS+1; i++) {
      this.len=len;
      this.x=x;
      this.y=y;
      Tendril tendrilly = new Tendril(len, 4*Math.PI/i, x, y);
      tendrilly.show();
    }
  }
}
