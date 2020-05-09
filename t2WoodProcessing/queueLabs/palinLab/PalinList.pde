import java.util.Queue;
import java.util.Stack;
import java.util.Arrays;
import java.util.ArrayList;
import java.util.LinkedList;

public class PalinList
{
  private Queue<String> q;
  private ArrayList<String> s;

  public PalinList()
  {
    setList("");
  }

  public PalinList(String list)
  {
    String[] str = list.split(" ");
    q = new LinkedList<String>();
    s = new ArrayList<String>();
    for (String x : str) {
      q.offer(x);
      s.add(x);
    }
  }

  public void setList(String list)
  {
    String[] str = list.split(" ");
    while (!(q.isEmpty()))
      q.remove();
    s.clear();
    for (String x : str) {
      q.offer(x);
      s.add(x);
    }
  }

  public String isPalin()
  {
    for (int i=0; i<s.size()/2; i++) 
      if (!(q.remove().equals(s.get(s.size()-1-i))))
        return s+" is not a palinlist";

    return s+" is a palinlist";
  }
}
