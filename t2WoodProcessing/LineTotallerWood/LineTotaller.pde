import java.util.Scanner;
import static java.lang.System.*;

public class LineTotaller
{
   private String line;
   public LineTotaller()
   {
    setLine("");
   }

   public LineTotaller(String s)
   {
     setLine(s);
   }

  public void setLine(String s)
  {
    this.line=s;
  }

  public int getSum()
  {
    int sum=0;
    Scanner scan = new Scanner(line);
    while(scan.hasNext()){
      sum+=scan.nextInt();
    }
    scan.close();
    return sum;
  }

  public String getLine()
  {
    return line;
  }

  public String toString()
  {
    return getLine()+"\nsum = "+getSum()+"\n";
  }
}
