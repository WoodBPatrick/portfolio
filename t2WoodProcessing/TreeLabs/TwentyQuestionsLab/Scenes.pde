public class Scenes  {
  PImage img;
  public Scenes() {
  }
  void scene0() {
    text("Lets play a game", width/3, height/2+50);
  }
  void scene1() {
    img=loadImage("how-to-apply-international.jpg");
    img.resize(500,300);
    image(img, 0, 0);
    fill(0);
    text("Texas El Paso", width/2-(width/10), 30);
  }
  void scene2() {
    img=loadImage("IMG_0081.jpg");
    img.resize(500,300);
    image(img, 0, 0);
    fill(0);
    text("Augsburg in Minneapolis", width/2-(width/10), 30);
  }
  void scene3() {
    img=loadImage("AR-200319991.jpg");
    img.resize(500,300);
    image(img, 0, 0);
    fill(0);
    text("U of Iowa", width/2-(width/10), 30);
  }
  void scene4() {
    img=loadImage("-181-800x600-0.jpg");
    img.resize(500,300);
    image(img, 0, 0);
    fill(0);
    text("Stetson in Florida", width/2-(width/10), 30);
  }
  void scene5() {
    img=loadImage("feature-1.jpg");
    img.resize(500,300);
    image(img, 0, 0);
    fill(0);
    text("Coe College in Iowa", width/2-(width/10), 30);
  }
  void scene6() {
    img=loadImage("5bcbba8157b92.image.jpg");
    img.resize(500,300);
    image(img, 0, 0);
    fill(0);
    text("U of Arizona", width/2-(width/10), 30);
  }
  void scene7() {
    img=loadImage("U-texas-austin-600x400.jpg");
    img.resize(500,300);
    image(img, 0, 0);
    fill(0);
    text("U of Austin, TX", width/2-(width/10), 30);
  }
  void scene8() {
    img=loadImage("UMN.jpg");
    img.resize(500,300);
    image(img, 0, 0);
    fill(0);
    text("UMN", width/2-(width/10), 30);
  }
}
