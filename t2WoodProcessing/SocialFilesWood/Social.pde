import static java.lang.System.*;

public class Social
{
   private String socialNum;

  public Social()
  {
    socialNum="";
  }

  public Social(String soc)
  {
    socialNum=soc;
  }

  public void setSocial(String soc)
  {
    socialNum=soc;
  }

  public int getSum()
  {
  Scanner scan = new Scanner(socialNum);
  int total=0;
  scan.useDelimiter("-");
  while(scan.hasNext()){
    total+=scan.nextInt();
  }
    return total;
  }

  public String toString()
  {
    return "SS# "+socialNum+" has a sum of "+getSum();
  }
}
