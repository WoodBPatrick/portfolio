import static java.lang.System.*;
import java.util.Scanner;
public class Person implements Comparable<Person>
{
  private int myYear;
  private int myMonth;
  private int myDay;
  private String myName;

  public Person(String n)
  {
    Scanner scan=new Scanner(n);
    myYear=scan.nextInt();
    myMonth=scan.nextInt();
    myDay=scan.nextInt();
    myName=scan.next();
    scan.close();
  }

  public int compareTo( Person other )
  {
    if(this.myYear>other.myYear)
      return 1;
    else if(this.myYear<other.myYear)
      return -1;
    if(this.myMonth>other.myMonth)
    return 1;
    else if(this.myMonth<other.myMonth)
    return -1;
    if(this.myDay>other.myDay)
    return 1;
    else if(this.myDay<other.myDay)
    return -1;
    if(1<this.myName.compareTo(other.myName))
    return 1;
    else if(1>this.myName.compareTo(other.myName))
    return -1;
    return 0;
  }

  public String toString( )
  {
    return myName+" "+myYear+" "+myMonth+" "+myDay;
  }
}
