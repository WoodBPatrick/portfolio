import java.util.Scanner;
public class StringParser {
  String words;
  StringParser(String scan) {
    this.words=scan;
  }
  public int getCount() {
    int count=0;
    String letters[]=words.split("\\W+");
    while (count<letters.length) {
      count++;
    }
    return count;
  }

  public int getVowels() {
    String[] vowels=words.split("[^aeiou]+");
    //https://regexr.com/4qrsh
    int count=0;
    while (count<vowels.length) {
      if (vowels[count]!=null && !(vowels[count].length()>1))
        count++;
      else if (vowels[count].length()>1) {
        count+=vowels[count].length();
      }
    }
    return count;
  }

  public int getSentences() {
    String endCharacters[]=words.split("[,\\w\\s\\w]+");
    int count=endCharacters.length-1;
    return count;
  }

  public int getSyll() {
    String [] syllables = words.split("[.?!():;]");
    syllables = words.split("[bcdfghjklmnpqrstvwxz]*[aeiouy]*[bcdfghjklmnpqrstvwxz]+");
    /*for(int i=0;i<syllables.length;i++)
      println(syllables[i]);*/
    return syllables.length;
  }
  public float getFleschScore() {
    return 206.835-1.015*(getCount()/getSentences())-84.6*(getSyll()/getCount());
  }
  public String getFleschGrade() {
    if (getFleschScore()>=90.00)
      return "5th grade";
    else if (getFleschScore()>=80.00)
      return "6th grade";
    else if (getFleschScore()>=70.00)
      return "7th grade";
    else if (getFleschScore()>=60.00)
      return "8th or 9th grade";
    else if (getFleschScore()>=50.00)
      return "10th to 12th grade";
    else if (getFleschScore()>=30.00)
      return "college";
    else if (getFleschScore()<30.00)
      return "college graduate";
    return "college graduate";
  }
}
