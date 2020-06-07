package main

import "fmt"

func main() {


 fmt.Printf("Vitej, jdeme hledat prvočísla. GL !!");
 fmt.Printf("%c", '\n');

  var aktdelka int = 0;
	var cisla[10001]int;
	cisla[0] = 2 
  var ccislo = 2;

  for i := 0; i < 10000; i++ {
    var ok = false;
    for !ok {
      ccislo++;
      for  i := 0; i <= aktdelka; i++ {
        if (ccislo % cisla[i] != 0) {
          ok = true;
        } else{
          ok = false;
          break;
        }
      }
    }
    aktdelka++;
    cisla[aktdelka] = ccislo;
  }

  for i := 0; i < aktdelka; i++ {
   fmt.Print(cisla[i], ", ");
  }

	fmt.Printf("\n konec %c", '\n');


}



