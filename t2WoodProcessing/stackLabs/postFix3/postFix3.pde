import java.util.*;

void setup() {
  PostFix test = new PostFix("2 7 + 1 2 + +");
  test.solve();
  System.out.println(test);

  test.setExpression("1 2 3 4 + + +");
  test.solve();
  System.out.println(test);

  test.setExpression("9 3 * 8 / 4 +");
  test.solve();
  System.out.println(test);

  test.setExpression("3 3 + 7 * 9 2 / +");
  test.solve();
  System.out.println(test);

  test.setExpression("9 3 / 2 * 7 9 * + 4 –");
  test.solve();
  System.out.println(test);

  test.setExpression("5 5 + 2 * 4 / 9 +");
  test.solve();
  System.out.println(test);
}

public class PostFix {
  private Stack<Double> stack;
  private String expression;

  public PostFix() {
    stack = new Stack<Double>();
    setExpression("");
  }

  public PostFix(String exp) {
    stack = new Stack<Double>();
    setExpression(exp);
  }

  public void setExpression(String exp) {
    expression = exp;
  }

  public double calc(double one, double two, char op) {
    switch(op) {
    case'+': 
      return one + two;
    case'-': 
      return one - two;
    case'*': 
      return one * two;
    case'/': 
      return one / two;
    }
    return 0;
  }

  public double solve() {
    String[] parts = expression.split(" ");
    for (int i=0; i<parts.length-2; i++) {
      if (parts[i+2].equals("+")|| parts[i+2].equals("-") || parts[i+2].equals("*") || parts[i+2].equals("/"))
        return calc(Double.parseDouble(parts[i]), Double.parseDouble(parts[i+1]), parts[i+2].charAt(0));
    }


    return 0;
  }

  public String toString() {
    return expression + " = " + solve();
  }
}
