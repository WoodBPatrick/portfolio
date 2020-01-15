import java.util.Arrays;

void setup() {
  String one="Hello, I am nine syllables long. And it is great!";
  String text=one.toLowerCase();

  String[] words = text.split("\\W+");
  println(Arrays.toString(words)+"\n");

  int count=0;
  while (count<words.length) {
    count++;
  }
  println("There are "+count+" words in this string\n");

  String[] vowels=text.split("[^aeiou]+");
  //https://regexr.com/4qrsh
  count=0;
  while (count<vowels.length) {
    if (vowels[count]!=null && !(vowels[count].length()>1))
      count++;
    else if (vowels[count].length()>1) {
      count+=vowels[count].length();
    }
  }
  println("There are "+count+" vowels in the string\n");

  String[] endCharacters=text.split("[,\\w\\s\\w]+");
  count=endCharacters.length-1;
  println("There are "+count+" sentences in the string\n");

  count = 0;
  String [] syllables = text.split("[bcdfghjklmnpqrstvwxz]*[aeiouy]*[bcdfghjklmnpqrstvwxz]+");
  int nullCounter=0;
  for(int i=0;i<syllables.length;i++){
    if(syllables[i].equals(" "))
      nullCounter++;
    println(syllables[i]);
  }
  println(syllables.length-nullCounter);
}
