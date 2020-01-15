import java.util.Scanner;
void setup(){
  
  try{
    Scanner file = new Scanner(new File("Desktop/t2WoodProcessing/TheLineFilesWood/data/thelinenums.txt"));
    int size = file.nextInt();
    file.nextLine();
    for(int i=0; i<size; i++)
    {
       String num = file.nextLine();
       TheLine oe=new TheLine(num);
       println(oe);
    }
  }catch(Exception e){
    println(e);
  }
}
