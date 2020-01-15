import java.util.Scanner;

void setup(){
  
  try{
  Scanner file = new Scanner(new File("Desktop/t2WoodProcessing/OddOrEvenFilesWood/data/oddEven.txt"));
    int size = file.nextInt();
    file.nextLine();
    for(int i = 0; i < size; i++)
    {
       int num = file.nextInt();
       OddOrEven oe=new OddOrEven(num);
       println(oe);
    }
  }catch(Exception e){
    println(e);
  }
}
