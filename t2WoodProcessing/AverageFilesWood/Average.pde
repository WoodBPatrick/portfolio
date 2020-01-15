import java.util.Scanner;
import static java.lang.System.*;

public class Average
{
  private String line;

  Average() {
    line="";
  }
  Average(String s) {
    line=s;
  }
  public String getLine() {
    return line;
  }
  private int getLowest()
  {
    int lowest=Integer.MAX_VALUE;
    Scanner scan = new Scanner(line);
    while (scan.hasNext()) {
      if (lowest>scan.nextInt())
        lowest=scan.nextInt();
    }
    scan.close();
    return lowest;
  }

  public double getAverage()
  {
    double average=0.0;
    int length=0, lowest=getLowest();
    println(lowest);
    Scanner scan = new Scanner(line);
    while (scan.hasNext()) {
      if(scan.nextInt()!=lowest){
        average+=scan.nextInt();
        length++;
      }
      else
        scan.nextLine();
    }
    scan.close();
    return average/length;
  }
  public String toString() {
    return line+"\naverage = "+getAverage();
  }
}
