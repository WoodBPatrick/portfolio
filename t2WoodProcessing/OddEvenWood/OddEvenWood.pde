void setup(){
  OddEvenCounter oec = new OddEvenCounter("9 10 5 20");
  println(oec);
  oec.setLine("11 22 33 44 55 66 77");
  println(oec);
  oec.setLine("3 5 3 1 5 7 5 4 3 2 7 8 9 9 9 6");
  println(oec);
  oec.setLine("2 4 6 8 2 4 6");
  println(oec);
  oec.setLine("1 3 5 7 9 1 3 5");
  println(oec);
}
