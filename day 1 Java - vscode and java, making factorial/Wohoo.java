import java.util.Scanner;

public class Wohoo {
  public static void main(String[] args) {
    Scanner scan = new Scanner(System.in);
    System.out.println("Zadejte cislo");

    int cislo = scan.nextInt();
    int vysledek = 1;

    for (int i = 1; i <= cislo; i++) {
      vysledek *= i;
    }

    System.out.println(vysledek);
  }

}