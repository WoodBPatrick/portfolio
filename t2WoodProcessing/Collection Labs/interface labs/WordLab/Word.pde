import static java.lang.System.*;

public class Word implements Comparable<Word>
{
  private String word;

  public Word( String s )
  {
    this.word=s;
  }

  public int compareTo( Word other )
  {    
    if (word.length()>other.word.length())
      return 1;
    else if (word.length()<other.word.length())
      return -1;
    return this.word.compareTo(other.word);
  }

  public String toString()
  {
    return word;
  }
}
