import java.util.List;
public class WordList {
  public List<Word> myList;
  private Word[] copyList;
  public WordList(String []tokens) {
    myList=new ArrayList<Word>();
    for (String s : tokens) {
      myList.add(new Word(s));
    }
    copyList = new Word[tokens.length];
    for(int i=0;i<tokens.length;i++){
      copyList[i] = new Word(tokens[i]);
    }
  }
  public String getName(int i){ return myList.get(i).getName(); } 
  public int getWordLength(int i){ return myList.get(i).getLength(); }
}
