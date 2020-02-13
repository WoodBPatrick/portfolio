import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Scanner;
import java.util.Collections;
import static java.lang.System.*;
import static java.lang.System.*;
import java.util.ListIterator;

public class MovieClass implements Comparable<MovieClass> {
  private int numRating;
  private String review;

  public MovieClass(int n, String r) {
    this.numRating = n;
    this.review = r;
  }

  public int compareTo(MovieClass other) {
    if (numRating > other.numRating) {
      return 1;
    } else if (numRating < other.numRating) {
      return -1;
    }
    return 0;
  }

  public int getNumRating() {
    return numRating;
  }

  public String getReview() {
    return review;
  }

  public String toString() {
    return "The Number Rating: "+numRating+"\nMovie Review: "+review;
  }
}
