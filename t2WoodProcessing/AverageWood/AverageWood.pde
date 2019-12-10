import java.util.Scanner;
import static java.lang.System.*;  

void setup(){
  Average a = new Average("9 10 5 20");
  println(a);
  a.setLine("11 22 33 44 55 66 77");
  println(a);
  a.setLine("48 52 29 100 50 29");
  println(a);
  a.setLine("0");
  println(a);
  a.setLine("100 90 95 98 100 97");
  println(a);
}
