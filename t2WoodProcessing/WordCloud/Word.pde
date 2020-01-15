public class Word{
  private String name;
  private int count;
  Word(String x){
    this.name=x;
    this.count=0;
  }
  // Set and get Methods  
  public void setName(String x){ this.name=x; }
  public void setCount(int i){ this.count=i; }
  public int getCount(){ return this.count; }
  public String getName(){ return this.name; }
  public int getLength(){ return this.name.length(); }
}
