String [] fileContents;
String rawText;
String [] tokens;
int count=10;
WordList wordsToms, wordsPride, wordsSwanns;
StringParser parserTom,parserPride,parserSwann,parserTest;
String temp="Hello, I am nine syllables long. and it is great!";
void setup() {
  frameRate(1);
  size(500,285);
  //test statement
  rawText = temp.toLowerCase();
  parserTest = new StringParser(rawText);
  print(rawText);
  println("\nThere are "+parserTest.getCount()+" words in the passage\n");
  println("There are "+parserTest.getVowels()+" vowels in the passage\n");
  println("There are "+parserTest.getSentences()+" sentences in the passage\n");
  println("There are "+parserTest.getSyll()+" syylables in the passage\n");
  println("Flesch–Kincaid readability test gives this book a "+parserTest.getFleschScore()+" for its readability score\n");
  println("The books readability grade level is "+parserTest.getFleschGrade());
  
  //Toms Cabin----------------------------------------------------------------
  fileContents=loadStrings("Desktop/t2WoodProcessing/WordCloud/data/tomsCabin.txt");
  rawText = join(fileContents, " ");
  rawText = rawText.toLowerCase();
  tokens=rawText.split("[^\\w]+");
  wordsToms = new WordList(tokens);
  parserTom = new StringParser(rawText);
  println("\n\n\nName of the book: Uncle Tom's Cabin by Harriet Beecher Stowe");
  println("There are "+parserTom.getCount()+" words in the passage\n");
  println("There are "+parserTom.getVowels()+" vowels in the passage\n");
  println("There are "+parserTom.getSentences()+" sentences in the passage\n");
  println("There are "+parserTom.getSyll()+" syylables in the passage\n");
  println("Flesch–Kincaid readability test gives this book a "+parserTom.getFleschScore()+" for its readability score\n");
  println("The books readability grade level is "+parserTom.getFleschGrade());
  
  //Pride and Prejudice---------------------------------------------------------
  fileContents=loadStrings("Desktop/t2WoodProcessing/WordCloud/data/prideAndPrejudice.txt");
  rawText = join(fileContents, " ");
  rawText = rawText.toLowerCase();
  tokens=rawText.split("[^\\w]+");
  wordsPride = new WordList(tokens);
  parserPride = new StringParser(rawText);
  println("\n\n\nName of the book: Pride and Prejudice by Jane Austen");
  println("There are "+parserPride.getCount()+" words in the passage\n");
  println("There are "+parserPride.getVowels()+" vowels in the passage\n");
  println("There are "+parserPride.getSentences()+" sentences in the passage\n");
  println("There are "+parserPride.getSyll()+" syylables in the passage\n");
  println("Flesch–Kincaid readability test gives this book a "+parserPride.getFleschScore()+" for its readability score\n");
  println("The books readability grade level is "+parserPride.getFleschGrade());
  
  //Swanns Way----------------------------------------------------------------
  fileContents=loadStrings("Desktop/t2WoodProcessing/WordCloud/data/swannsWay.txt");
  rawText = join(fileContents, " ");
  rawText = rawText.toLowerCase();
  tokens=rawText.split("[^\\w]+");
  wordsSwanns = new WordList(tokens);
  parserSwann = new StringParser(rawText);
  println("\n\n\nName of the book: Swann'S Way by Marcel Proust");
  println("There are "+parserSwann.getCount()+" words in the passage\n");
  println("There are "+parserSwann.getVowels()+" vowels in the passage\n");
  println("There are "+parserSwann.getSentences()+" sentences in the passage\n");
  println("There are "+parserSwann.getSyll()+" syylables in the passage\n");
  println("Flesch–Kincaid readability test gives this book a "+parserSwann.getFleschScore()+" for its readability score\n");
  println("The books readability grade level is "+parserSwann.getFleschGrade());
  
}
void draw() {
  background(0);
  //Toms Cabin----------------------------------------------------------------
  textSize(20);
  fill(100,100,255);
  //Title
  text("Uncle Toms Cabin: \n"+wordsToms.getName(count)+" "+wordsToms.getName(count+1),width/2-50,20);
  //Stats
  textSize(15);
  text("Word Count: "+parserTom.getCount(),15,20);
  text("Vowels Count: "+parserTom.getVowels(),15,40);
  text("Sentence Count: "+parserTom.getSentences(),15,60);
  text("Syllables Count: "+parserTom.getSyll(),15,80);
  //Pride and Prejudice---------------------------------------------------------
  fill(0,200,0);
  textSize(20);
  //Title
  text("Pride and Prejudice: \n"+wordsPride.getName(count)+" "+wordsPride.getName(count+1),width/2-50,120);
  //Stats
  textSize(15);
  text("Word Count: "+parserPride.getCount(),15,120);
  text("Vowels Count: "+parserPride.getVowels(),15,140);
  text("Sentence Count: "+parserPride.getSentences(),15,160);
  text("Syllables Count: "+parserPride.getSyll(),15,180);
  //Swanns Way----------------------------------------------------------------
  fill(200,0,0);
  textSize(20);
  //Title
  text("Swanns Way: \n"+wordsSwanns.getName(count)+" "+wordsSwanns.getName(count+1),width/2-50,220);
  //Stats
  textSize(15);
  text("Word Count: "+parserSwann.getCount(),15,220);
  text("Vowels Count: "+parserSwann.getVowels(),15,240);
  text("Sentence Count: "+parserSwann.getSentences(),15,260);
  text("Syllables Count: "+parserSwann.getSyll(),15,280);
  count+=2;
  
}
