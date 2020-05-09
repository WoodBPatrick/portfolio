import java.util.*;
import java.util.Comparator;
public class PQTester
{
  private Queue<String> pQ;
  private ArrayList<String> list;
  public PQTester(String list)
  {
    pQ = new PriorityQueue<String>();
    this.list = new ArrayList<String>();
    String[] str = list.split(" ");
    for (String x : str){
      pQ.offer(x);
      this.list.add(x);
    }
  }

  public void setPQ(String list)
  {
    String[] str = list.split(" ");
    this.list.clear();
    while (!(pQ.isEmpty()))
      pQ.remove();
    for (String x : str){
      pQ.offer(x);
      this.list.add(x);
    }
  }

  public Object getMin()
  {
    return "getMin() - "+pQ.peek();
  }

  public String getNaturalOrder()
  {
    String output="getNaturalOrder() - ";
    while (!(pQ.isEmpty()))
      output+=pQ.poll()+" ";
    return output;
  }

  public String toString() {
    String output="toString() - ";
    for(String x: list)
      output+=x+" ";
    return output;
  }
}
