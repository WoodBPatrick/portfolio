import java.util.*;

void setup() {
  String[] str = loadStrings("circus.txt");
  Stack stack = new Stack();
  ArrayList<Integer> lens = new ArrayList<Integer>();
  lens.add(Integer.parseInt(str[0]));
  lens.add(Integer.parseInt(str[8]));
  lens.add(Integer.parseInt(str[15]));
  for (int i=str.length-2; i>0; i--) {
    stack.push(str[i]);
  }
for (int i=lens.get(0); i>=0; i--) {
    if (i==lens.get(0))
      println("SET "+i);
    else
      println(stack.pop()+" ");
  }
  println("SET "+lens.get(1));
  for (int i=lens.get(1)+lens.get(0)+1; i>lens.get(0); i--) {
    println(stack.pop()+" ");
  }
  println("SET "+lens.get(2));
  for (int i=lens.get(2)+lens.get(1)+lens.get(0)+2; i>lens.get(1)+lens.get(0)+1; i--) {
    println(stack.pop()+" ");
  }
}
