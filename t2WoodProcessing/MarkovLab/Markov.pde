import java.util.List;
import java.util.ArrayList;
import java.util.Map;
import java.util.HashMap;

class MarkovChain implements Markov {
  List <String> wordList;
  Map<String, ArrayList<String>> map;

  public MarkovChain() {
    wordList=new ArrayList<String>();
    map=new HashMap<String, ArrayList<String>>();
  }

  void trainMap(String[] str) {
    for (int i=0; i<str.length-1; i+=2) {
      ArrayList<String> temp = new ArrayList<String>();
      temp.add(str[i+1]);
      if (!(map.containsKey(str[i]))) {
        map.put(str[i], temp);
      } else {
        map.get(str[i]).add(temp.get(0));
      }
    }
  }

  String generateText(String str) {
    String newWord = "";
    if (map.containsKey(str)) {
      newWord+=map.get(str).get(getRandomIndex(str))+" "+map.get(str).get(getRandomIndex(str));
    }
    return newWord;
  }

  int getRandomIndex(String s) {
    int randomIndex=(int)(Math.random()*map.get(s).size());
    return randomIndex;
  }
  void printMap() {
  }

  public String toString() {
    return ""+wordList;
  }
}
