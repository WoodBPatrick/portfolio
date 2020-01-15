import java.util.Scanner;
public class LineBreaker
{
  private String line;
  private int breaker;

  public LineBreaker()
  {
    this("", 0);
  }

  public LineBreaker(String s, int b)
  {
    line=s;
    breaker=b;
  }

  public void setLineBreaker(String s, int b)
  {
    line=s;
    breaker=b;
  }

  public String getLine()
  {
    return line;
  }

  public String getLineBreaker()
  {
    String lineTemp="";
    int whenToBreak=breaker*2;
    for (int i=0; i<line.length(); i++) {
      if (whenToBreak!=i) {
        lineTemp+=line.substring(i, i+1);
      } else {
        lineTemp+="\n";
        whenToBreak+=breaker*2;
        i--;
      }
    }
    return lineTemp;
  }

  public String toString()
  {

    return "\n"+getLine()+"\n"+getLineBreaker();
  }
}
