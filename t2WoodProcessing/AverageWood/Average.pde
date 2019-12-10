import java.util.Scanner;
import static java.lang.System.*;

public class Average
{
   private String line;
   public Average()
   {
    setLine("");
   }

   public Average(String s)
   {
     setLine(s);
   }

  public void setLine(String s)
  {
    this.line=s;
  }

  public float getAverage()
  {
    float count=0,avg=0;
    Scanner scan = new Scanner(line);
    while(scan.hasNext()){
      avg+=scan.nextInt();
      count++;
    }
    scan.close();
    return avg/count;
  }

  public String getLine()
  {
    return line;
  }

  public String toString()
  {
    return getLine()+"\naverage = "+getAverage()+"\n";
  }
}
