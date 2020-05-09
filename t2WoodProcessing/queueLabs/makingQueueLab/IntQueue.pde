import java.util.ArrayList;
import static java.lang.System.*;

public class IntQueue
{
  //pick your storage for the queue
  //you can use the an array or an ArrayList

  ////option 1
  //private int[] rayOfInts;
  //private int numInts;

  //option 2
  private ArrayList<Integer> loi;

  public IntQueue()
  {
    loi = new ArrayList<Integer>();
  }

  public void add(int item)
  {
    loi.add(item);
  }

  public int remove()
  {
    return loi.remove(0);
  }

  public boolean isEmpty()
  {
    if (loi.size()==0)
      return true;
    return false;
  }

  public int peek()
  {
    return loi.get(0);
  }

  public String toString()
  {
    String output="";
    for (int i=0; i<loi.size(); i++)
      output+=loi.get(i)+" ";
    return output;
  }
}
