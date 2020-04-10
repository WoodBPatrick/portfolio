MarkovChain mc=new MarkovChain();
String [] cleanText;
void setup() {
  size(800, 800);
  frameRate(1);
  String [] str=loadStrings("oneFish.txt.txt");
  String allText=join(str, " ");
  cleanText=allText.replaceAll("[^a-zA-Z ]", "").toLowerCase().split("\\s+");//removes punct before splitting
  mc.trainMap(cleanText);
  for (String s : cleanText) {
    mc.generateText(s);
    println(mc.generateText(s));
  }
  mc.printMap();
}

interface Markov {
  void trainMap(String [] s);
  String generateText(String s);
}

void draw() {
  background(0);
  textSize(10);
  String temp="";
  int x=10, y=10;
  for (int i=0;i<cleanText.length-1;i++) {
    temp=mc.generateText(cleanText[i]);
    if (x+150+cleanText[i].length()*10>800){ 
      x=1;
      y+=10;
    }
    else
      x+=150;
    text(temp, x, y);
  }
}
