import java.util.Scanner;
void setup(){
  
  try{
    Scanner file = new Scanner(new File("Desktop/t2WoodProcessing/AverageFilesWood/data/averageData.txt"));
    int length = file.nextInt();
    file.nextLine();
    for(int i=0; i<length; i++)
    {
       String nums = file.nextLine();
       Average oe = new Average(nums);
       println(oe+"\n");
    }
  }catch(Exception e){
    println(e);
  }
}
