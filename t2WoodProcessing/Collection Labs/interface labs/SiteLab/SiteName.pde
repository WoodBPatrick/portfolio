import static java.lang.System.*;

class SiteName implements Comparable<SiteName>
{
  private String name;
  private String url;

  SiteName(String name, String url) {
    this.url=url;
    this.name=name;
  }

  public int compareTo(SiteName other) {
    char letter1 = name.charAt(0); // this.name
    int ascii1 = (int) letter1;
    char letter2 = other.getName().charAt(0); // other
    int ascii2 = (int) letter2;
    if (ascii1<ascii2)
      return 1; 
    else if (ascii1>ascii2)
      return -1;
    else {
      char letter3 = name.charAt(1); // this.name
      int ascii3 = (int) letter3;
      char letter4 = other.getName().charAt(1); // other
      int ascii4 = (int) letter4;
      if (ascii3<ascii4)
        return 1; 
      else if (ascii3>ascii4)
        return -1;
      else {
        char letter5 = name.charAt(2); // this.name
      int ascii5 = (int) letter5;
      char letter6 = other.getName().charAt(2); // other
      int ascii6 = (int) letter6;
      if (ascii5<ascii6)
        return 1; 
      else if (ascii5>ascii6)
        return -1;
      else return 0;
      }
    }
  }
  public String getName() {
    return name;
  }
  public String toString() {
    return name+"."+url;
  }
}
