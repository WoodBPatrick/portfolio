String [] fileContents ;
String rawText;
String [] tokens;
WordList words;
StringParser parser;
String temp="Hello, I am nine syllables long. and it is great!";
void setup() {
  //fullScreen();
  //test statement
  rawText = temp.toLowerCase();
  parser = new StringParser(rawText);
  print(rawText);
  println("There are "+parser.getCount()+" words in the passage\n");
  println("There are "+parser.getVowels()+" vowels in the passage\n");
  println("There are "+parser.getSentences()+" sentences in the passage\n");
  println("There are "+parser.getSyll()+" syylables in the passage\n");
  println("Flesch–Kincaid readability test gives this book a "+parser.getFleschScore()+" for its readability score\n");
  println("The books readability grade level is "+parser.getFleschGrade());
  
  //Toms Cabin----------------------------------------------------------------
  fileContents=loadStrings("Desktop/t2WoodProcessing/WordCloud/data/tomsCabin.txt");
  rawText = join(fileContents, " ");
  rawText = rawText.toLowerCase();
  tokens=rawText.split("[^\\w]+");
  words = new WordList(tokens);
  parser = new StringParser(rawText);
  println("Name of the book: Uncle Tom's Cabin by Harriet Beecher Stowe");
  println("There are "+parser.getCount()+" words in the passage\n");
  println("There are "+parser.getVowels()+" vowels in the passage\n");
  println("There are "+parser.getSentences()+" sentences in the passage\n");
  println("There are "+parser.getSyll()+" syylables in the passage\n");
  println("Flesch–Kincaid readability test gives this book a "+parser.getFleschScore()+" for its readability score\n");
  println("The books readability grade level is "+parser.getFleschGrade());
  
  //Pride and Prejudice---------------------------------------------------------
  fileContents=loadStrings("Desktop/t2WoodProcessing/WordCloud/data/prideAndPrejudice.txt");
  rawText = join(fileContents, " ");
  rawText = rawText.toLowerCase();
  tokens=rawText.split("[^\\w]+");
  words = new WordList(tokens);
  parser = new StringParser(rawText);
  println("\n\n\nName of the book: Pride and Prejudice by Jane Austen");
  println("There are "+parser.getCount()+" words in the passage\n");
  println("There are "+parser.getVowels()+" vowels in the passage\n");
  println("There are "+parser.getSentences()+" sentences in the passage\n");
  println("There are "+parser.getSyll()+" syylables in the passage\n");
  println("Flesch–Kincaid readability test gives this book a "+parser.getFleschScore()+" for its readability score\n");
  println("The books readability grade level is "+parser.getFleschGrade());
  
  //Swanns Way----------------------------------------------------------------
  fileContents=loadStrings("Desktop/t2WoodProcessing/WordCloud/data/swannsWay.txt");
  rawText = join(fileContents, " ");
  rawText = rawText.toLowerCase();
  tokens=rawText.split("[^\\w]+");
  words = new WordList(tokens);
  parser = new StringParser(rawText);
  println("\n\n\nName of the book: Swann'S Way by Marcel Proust");
  println("There are "+parser.getCount()+" words in the passage\n");
  println("There are "+parser.getVowels()+" vowels in the passage\n");
  println("There are "+parser.getSentences()+" sentences in the passage\n");
  println("There are "+parser.getSyll()+" syylables in the passage\n");
  println("Flesch–Kincaid readability test gives this book a "+parser.getFleschScore()+" for its readability score\n");
  println("The books readability grade level is "+parser.getFleschGrade());
  
}
void draw() {
  background(0);
  textSize(20);
  /*int posX=5, posY=15;
  for (int i=0; i<tokens.length; i++) {
    text(words.getName(i), posX, posY);
    posX+=words.getWordLength(i+1);
    if (posX>width) {
      posX=5;
      posY+=20;
    }
  }*/
}
