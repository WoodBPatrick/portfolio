import java.util.Scanner;
void setup(){
  
  try{
    Scanner file = new Scanner(new File("Desktop/t2WoodProcessing/BoxFilesWood/data/boxData.txt"));
    int length = file.nextInt();
    file.nextLine();
    for(int i=0; i<length; i++)
    {
       String let = file.next();
       int size = file.nextInt();
       Box oe = new Box(let, size);
       println(oe);
    }
  }catch(Exception e){
    println(e);
  }
}
