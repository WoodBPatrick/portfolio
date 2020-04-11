class DisplayText {
  private int x, y;
  private String text;
  public DisplayText(int x, int y, String text) {
    this.x=x;
    this.y=y;
    this.text=text;
  }
  public void display() {
    textAlign(CENTER);
    textSize(20);
    fill(255);
    text(text, x, y);
  }
}
