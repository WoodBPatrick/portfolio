import static java.lang.System.*;
import java.util.Scanner;
public class TheLine
{
  private String line;

  public TheLine()
  {
    line="";
  }

  public TheLine(String s)
  {
    line=s;
  }

  public int getLargest()
  {
    Scanner scan = new Scanner(line);
    int largest = Integer.MIN_VALUE;
    int num=0;
    while (scan.hasNext()) {
      num=scan.nextInt();
      if (num>largest)
        largest=num;
    }
    scan.close();
    return largest;
  }

  public String toString( )
  {
    return line+" - Largest == "+getLargest()+"\n\n";
  }
}
