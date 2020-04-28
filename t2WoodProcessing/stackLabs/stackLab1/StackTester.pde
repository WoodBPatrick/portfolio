import java.util.Stack;

class StackTester {
  private Stack<String> stack;

  public StackTester()
  {
    setStack("");
  }

  public StackTester(String line)
  {
    stack = new Stack();
    String[] temp = line.split(" ");
    for (int i=0; i<temp.length; i++) 
      stack.push(temp[i]);
  }

  public void setStack(String line)
  {
    stack = new Stack<String>();
    String[] temp = line.split(" ");
    for (int i=0; i<temp.length; i++) 
      stack.push(temp[i]);
  }


  public void popEmAll() {
    System.out.println("popping all items from the stack");
    //which loop works for the push pop operations of a stack?

    //1.  this one...?  and why?
    //for (int i=0; i<stack.size(); i++) {
    //    System.out.print(stack.pop()+ " ");
    //}

    //2. or this one?
    while (stack.isEmpty()!=true)
      System.out.print(stack.pop()+ " ");

    System.out.println("\n\n\n");
  }

  public String toString()
  {
    return ""+stack+"\n";
  }
}
