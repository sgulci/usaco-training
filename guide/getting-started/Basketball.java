
import java.util.Scanner;

//https://open.kattis.com/problems/basketballoneonone
public class Basketball {

  public static void main(String[] args) {

    try (Scanner sc = new Scanner(System.in);) {

      String s = sc.next();

      System.out.println(s.charAt(s.length() - 2));

    }

  }
}