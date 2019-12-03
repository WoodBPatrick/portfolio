class House {
  private int x;
  private boolean show=true;
  House(int x) {
    this.x=x;
  }
  void show() {
    if (show) {
      fill(139, 69, 19);
      rect(x, 820, 200, 200);
      rect(x+133, 750, 40, 70);
      fill(0, 100, 0);
      triangle(x-50, 850, x+100, 750, x+250, 850);
      fill(119, 59, 9);
      rect(x+75, 900, 50, 100);
      fill(135, 206, 250);
      rect(x+20, 900, 50, 50);
      rect(x+130, 900, 50, 50);
    } else {
      fill(139, 69, 19);
      rect(x, 820, 200, 200);
      rect(x+133, 750, 40, 70);
      fill(0, 100, 0);
      triangle(x-50, 850, x+100, 750, x+250, 850);
      fill(119, 59, 9);
      rect(x+75, 900, 50, 100);
      fill(135, 206, 250);
      rect(x+20, 900, 50, 50);
      rect(x+130, 900, 50, 50);
      fill(0);
      if (santa.x<=width+1000)
        ellipse(x, 820, 30, 30);
      if (santa.x<=width+1300)
        ellipse(x, 890, 20, 20);
      if (santa.x<=width+1600)
        ellipse(x+200, 820, 10, 10);
      if (santa.x<=width+1900)
        ellipse(x+173, 770, 10, 20);
      if (santa.x<=width+2200)
        ellipse(x, 990, 20, 20);
      if (santa.x<=width+2500)
        ellipse(x+50, 800, 30, 25);
      if (santa.x<=width+2800)
        ellipse(x+150, 820, 30, 33);
    }
  }
  void rumbleHouse() {
  }
}
