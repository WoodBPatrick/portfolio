import java.util.Scanner;
import static java.lang.System.*;
public class OddEvenCounter
{
   private String line;
   public OddEvenCounter()
   {
    setLine("");
   }

   public OddEvenCounter(String s)
   {
     setLine(s);
   }

  public void setLine(String s)
  {
    this.line=s;
  }

  public int getOddCount()
  {
    int count=0;
    Scanner scan = new Scanner(line);
    while(scan.hasNext()){
      if(scan.nextInt()%2!=0)
        count++;
    }
    scan.close();
    return count;
  }

  public int getEvenCount()
  {
    int count=0;
    Scanner scan = new Scanner(line);
    while(scan.hasNext()){
      if(scan.nextInt()%2==0)
        count++;
    }
    scan.close();
    return count;
  }
  public String getLine(){
    return line;
  }
  public String toString()
  {
    return ""+getLine()+"\nEven Count = "+getEvenCount()+"\nOdd Count = "+getOddCount()+"\n";
  }
}
