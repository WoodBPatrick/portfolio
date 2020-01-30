import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Scanner;
import java.util.Collections;
import static java.lang.System.*;

void setup(){
  try{
    Scanner file = new Scanner(new File("Desktop/t2WoodProcessing/Collection Labs/interface labs/PersonLab/personData.txt"));
    List<Person> myList = new ArrayList<Person>();
    int num = file.nextInt();
    file.nextLine();
    for(int i=0; i<num; i++){
       Person per = new Person(file.nextLine());
       myList.add(per);
    }
    file.close();
    Collections.sort(myList);
    for(int i=myList.size()-1;i>-1;i--)
    {
      println(myList.get(i));
    }
  }catch(Exception e){
    println(e);
  }
}
