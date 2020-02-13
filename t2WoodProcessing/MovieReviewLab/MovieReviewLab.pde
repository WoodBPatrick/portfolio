import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Scanner;
import java.util.Collections;
import static java.lang.System.*;
List<MovieClass> myList;
MovieList ml = new MovieList();
int i=0, j=0, loopsI=0, loopsJ=0, pNum;
int num;
void setup() {
  size(1700, 1000);
  //fullScreen();
  frameRate(1);
  try {
    Scanner file = new Scanner(new File("Desktop/t2WoodProcessing/MovieReviewLab/movieReview.txt"));
    myList = new ArrayList<MovieClass>();
    num = file.nextInt();
    file.nextLine();
    for (int i=0; i<num; i++) {
      MovieClass mc = new MovieClass(file.nextInt(), file.nextLine());
      myList.add(mc);
      ml.addMovie(mc);
    }
    ml.sortMoviesByCount();
    file.close();
  }
  catch(Exception e) {
    println(e);
  }
}
void draw() {
  background(0);
  fill(255);
  textSize(14);
  if (myList.get(i).getReview().length()>200)
    textSize(12);
  text(myList.get(i).getReview(), 5, 20);
  textSize(14);
  text(myList.get(i).getNumRating()+1, 5, 40);
  text("Length of review "+myList.get(i).getReview().length(), 5, 60);
  text("Number of loops for reviews = "+loopsI, 5, 80);
  text("------------------------------", 5, 90);
  text("Special word in reviews: "+ml.getWord(j), 5, 100);
  text("Special word average scores: "+ml.getAverageRounded(j), 5, 120);
  text("Special word average reviews: "+ml.overallWordReview(j), 5, 140);
  text("Number of loops for special words = "+loopsJ, 5, 160);
  text("Number of times the word appears in the reviews: ", 5, 180);
  fill(255, 10, 10);
  rect(5, 190, (int)ml.getCount()*3, 20);
  fill(255);
  text(""+(int)ml.getCount(), (int)ml.getCount()*3+10, 206);
  pNum=0;
  text("Every special word with the number of times they are used in the reviews:", 5, 224);
  for (int p=0; p<ml.getWordSize(); p++) {
    pNum+=17;
    textSize(15);
    if (ml.getWord(p).equals(ml.getWord(j))) {
      fill(255, 10, 10);
      rect(5, 215+pNum, ml.getSpecCount(p)*3, 10);
    } else 
    fill(255);
    rect(5, 215+pNum, ml.getSpecCount(p)*3, 10);
    fill(255);
    text(ml.getSpecCount(p)+" "+ml.getWord(p), ml.getSpecCount(p)*3+10, 226+pNum);
  }
  j++;
  i++;
  if (j>ml.getWordSize()-1) {
    j=0;
    loopsJ++;
  }
  if (i>num-1) {
    i=0;
    loopsI++;
  }
}
