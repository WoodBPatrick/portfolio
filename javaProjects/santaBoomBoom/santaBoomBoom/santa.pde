
class Santa {
  private int x, y;
  Santa() {
    x=-500;
    y=150;
  }
  void move() {
    x+=5;
    if (x>width+50000) {
      x=-500;
    }
  }
}