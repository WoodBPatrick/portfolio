import java.util.Queue;
import java.util.Stack;
import java.util.Arrays;
import java.util.ArrayList;
import java.util.LinkedList;

void setup(){
  PalinList p = new PalinList("one two three two one");
  println(p.isPalin());
  
  p.setList("1 2 3 4 5 one two three four five");
  println(p.isPalin());
  
  p.setList("a b c d e f g x y z g f h");
  println(p.isPalin());
  
  p.setList("racecar is racecar");
  println(p.isPalin());
  
  p.setList("1 2 3 a b c c b a 3 2 1");
  println(p.isPalin());
  
  p.setList("chicken is a chicken");
  println(p.isPalin());
}
