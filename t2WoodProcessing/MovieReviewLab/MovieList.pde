import java.util.ListIterator;
import java.math.RoundingMode;
import java.math.BigDecimal;
public class MovieList {
  private ArrayList <MovieClass> MovieList;
  private int num=0;
  private double count=0;
  private List<String> myWord;
  MovieList() {
    MovieList = new ArrayList <MovieClass>();
    try {
      Scanner file = new Scanner(new File("Desktop/t2WoodProcessing/MovieReviewLab/wordList.txt"));
      myWord = new ArrayList<String>();
      num = file.nextInt();
      file.nextLine();
      for (int i=0; i<num; i++) {
        myWord.add(file.next());
      }
      file.close();
    }
    catch(Exception e) {
      println(e);
    }
  }

  public double getCount() {
    return count;
  }

  public int getWordSize() {
    return num;
  }

  public boolean searchWords(MovieClass mc, int j) {
    if (mc.getReview().contains(myWord.get(j))) {
      return true;
    }
    return false;
  }


  public double getAverageScore() {
    int avg=0;
    count = 0;
    for (MovieClass i : MovieList) {
      avg+=i.getNumRating();
      count++;
    }
    return avg/count;
  }

  public int getSpecCount(int j) {
    count=0;
    for (int i=0; i<MovieList.size(); i++) {
      if (searchWords(MovieList.get(i), j)) {
        count++;
      }
    }
    return (int)count;
  }

  public double getAverageWordScore(int j) {
    double avg=0; 
    count=0;
    for (int i=0; i<MovieList.size(); i++) {
      if (searchWords(MovieList.get(i), j)) {
        count++;
        avg+=MovieList.get(i).getNumRating();
      }
    }
    return avg/count;
  }

  public double getAverageRounded(int j) {
    BigDecimal bd = new BigDecimal(getAverageWordScore(j)).setScale(2, RoundingMode.HALF_UP);
    double x = bd.doubleValue();
    return x;
  }

  public String getWord(int j) {
    return myWord.get(j);
  }

  public String overallReview() {
    double x = getAverageScore();
    if (x<1) {
      return "The movie is awful";
    } else if (x<2.5) {
      return "The movie is alright";
    } else if (x < 4) {
      return "The movie is fantastic";
    } else {
      return "The movie is a masterpiece";
    }
  }

  public String overallWordReview(int j) {
    double x = getAverageWordScore(j);
    if (x<1) {
      return "The movies are awful";
    } else if (x<2.5) {
      return "The movies are alright";
    } else if (x < 4) {
      return "The movies are fantastic";
    } else {
      return "The movies are a masterpiece";
    }
  }      

  public void sortMoviesByCount() {
    Collections.sort(MovieList);
  }

  public void addMovie(MovieClass mc) {
    MovieList.add(mc);
  }

  public String toString() {
    ListIterator<MovieClass> it = MovieList.listIterator();
    while (it.hasNext())
      println(it.next());
    return MovieList.toString();
  }
}
