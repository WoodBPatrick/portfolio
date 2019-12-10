import java.util.Scanner;
import static java.lang.System.*;  

void setup(){
  LineTotaller lt = new LineTotaller("1 2 3 4 5 6");
  println(lt);
  lt.setLine("10 20 30 40 50 60");
  println(lt);
  lt.setLine("250 657 2154 345 6796");
  println(lt);
  lt.setLine("0");
  println(lt);
  lt.setLine("-99 45 -98 92 87");
  println(lt);
}
