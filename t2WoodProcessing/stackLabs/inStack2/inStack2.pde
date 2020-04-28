void setup() {
  IntStack test = new IntStack();
  test.push(5);
  test.push(7);
  test.push(9);
  System.out.println(test);
  System.out.println(test.isEmpty());
  System.out.println(test.pop());
  System.out.println(test.peek());
  System.out.println(test.pop());
  System.out.println(test.pop());
  //System.out.println(test.peek());  //blows up
  System.out.println(test.isEmpty());
  System.out.println(test);
}

class IntStack {

  //pick your storage for the stack
  //you can use the an array or an ArrayList

  //option 1
  //private int[] rayOfInts;
  //private int numInts;

  //option 2
  private ArrayList<Integer> loi; //listOfInts

  public IntStack() {
    loi = new ArrayList<Integer>();
  }

  public void push(int item) {
    loi.add(item);
  }

  public int pop() {
    return loi.remove(loi.size()-1);
  }

  public boolean isEmpty() {
    if (loi.size()==0)
      return true;
    else return false;
  }

  public int peek() {
    return loi.get(loi.size()-1);
  }

  public String toString() {
    String remy="[";
    for (int i=0; i<loi.size(); i++) {
      if (loi.size()-1==i)
        remy+=loi.get(i);
      else
        remy+=loi.get(i)+", ";
    }
    remy+="]";
    return remy;
  }
}
