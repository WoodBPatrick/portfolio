BST tree=new BST();
TreeNode current;
Scenes sc;
String s = "Do you like rural (left) or cities (right)?";
boolean introSlide=false;
boolean one, two, three, four, five, six, seven, eight=false;

void setup() {
  size(500, 300);
  current=tree.buildTree();
  sc=new Scenes();
}
void draw() {
  background(0);
  fill(255);
  textSize(20);
  text("College Game!", width/3+10, height/4);
  text(s, width/7, height/2);
  changeScenes();
}


void changeScenes() {
  if (introSlide==true) {
    sc.scene0();
  } else if (one==true) {
    sc.scene1();
  } else if (two==true) {
    sc.scene2();
  } else if (three==true) {
    sc.scene3();
  } else if (four==true) {
    sc.scene4();
  } else if (five==true) {
    sc.scene5();
  } else if (six==true) {
    sc.scene6();
  } else if (seven==true) {
    sc.scene7();
  } else if (eight==true) {
    sc.scene8();
  } else {
    introSlide=true;
  }
}

void keyPressed() {
  println(s);
  if (keyCode == LEFT) {
    s=(String)current.getValue();
    System.out.println(s);
    if (s.equals("Texas El Paso!")) {//leaf
      print("hi");
      one=true;
      introSlide=false;
    } else if (s.equals("Augsburg in Minneapolis!")) {//leaf
      two=true;
      introSlide=false;
    } else if (s.equals("U of Iowa!")) {//leaf
      three=true;
      introSlide=false;
    } else if (s.equals("Stetson in Florida!")) {//leaf
      four=true;
      introSlide=false;
    } else if (s.equals("Coe College in Iowa!")) {//leaf
      five=true;
      introSlide=false;
    } else if (s.equals("U of Arizona!")) {//leaf
      six=true;
      introSlide=false;
    } else if (s.equals("U of Austin, TX!")) {//leaf
      seven=true;
      introSlide=false;
    } else if (s.equals("UMN!")) {//leaf
      eight=true;
      introSlide=false;
    } else {
      current= current.getLeft();
    }
  } else if (keyCode == RIGHT) {
    s=(String)current.getValue();
    System.out.println(s);
    if (s.equals("Texas El Paso!")) {//leaf
      one=true;
      introSlide=false;
    } else if (s.equals("Augsburg in Minneapolis!")) {//leaf
      two=true;
      introSlide=false;
    } else if (s.equals("U of Iowa!")) {//leaf
      three=true;
      introSlide=false;
    } else if (s.equals("Stetson in Florida!")) {//leaf
      four=true;
      introSlide=false;
    } else if (s.equals("Coe College in Iowa!")) {//leaf
      five=true;
      introSlide=false;
    } else if (s.equals("U of Arizona!")) {//leaf
      six=true;
      introSlide=false;
    } else if (s.equals("U of Austin, TX!")) {//leaf
      seven=true;
      introSlide=false;
    } else if (s.equals("UMN!")) {//leaf
      eight=true;
      introSlide=false;
    } else {
      current = current.getRight();
    }
  }
}



interface Treeable {
  public Object getValue();
  public Treeable getLeft();
  public Treeable getRight();
  public void setValue(Comparable value);
  public void setLeft(Treeable left);
  public void setRight(Treeable right);
}
