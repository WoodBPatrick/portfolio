void setup(){
  PQTester p = new PQTester("one two three four five six seven");
  println(p);
  println(p.getMin());
  println(p.getNaturalOrder());
  println("\n");
  p.setPQ("1 2 3 4 5 one two three four five");
  println(p);
  println(p.getMin());
  println(p.getNaturalOrder());
  println("\n");
  p.setPQ("a p h j e f m c i d k l g n o b");
  println(p);
  println(p.getMin());
  println(p.getNaturalOrder());
}
