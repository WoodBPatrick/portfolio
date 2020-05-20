import java.util.LinkedList;
import static java.lang.System.*;

public class JavaLinkedList
{
  private LinkedList<Integer> list;

  public JavaLinkedList()
  {
    list = new LinkedList<Integer>();
  }

  public JavaLinkedList(int[] nums)
  {
    list = new LinkedList<Integer>();
    for (int num : nums)
    {
      list.add(num);
    }
  }

  public double getSum(  )
  {
    double total=0;
    for (Integer x : list) {
      total+=x;
    }
    return total;
  }

  public double getAvg(  )
  {
    double total=0;
    for (Integer x : list) {
      total+=x;
    }
    return total/list.size();
  }

  public int getLargest()
  {
    int largest=Integer.MIN_VALUE;
    for (Integer x : list) {
      if(largest<x)
        largest=x;
    }
    return largest;
  }

  public int getSmallest()
  {
    int smallest = Integer.MAX_VALUE;
    for (Integer x : list) {
      if(smallest>x)
        smallest=x;
    }
    return smallest;
  }

  public String toString()
  {
    String output="[ ";
    for (Integer x : list) {
      output+=x+" ";
    }
    output+="]\nSUM: : "+getSum()+"\nAVERAGE: : "+getAvg()+"\nSMALLEST: : "+getSmallest()+"\nLARGEST: : "+getLargest()+"\n";
    return output;
  }
}
