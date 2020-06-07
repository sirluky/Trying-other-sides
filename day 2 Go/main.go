package main

import "fmt"

func main() {
	var cislo int
	
	fmt.Print("Zadejte cislo: ");
	fmt.Scan(&cislo)

	var vysledek  = 1

	for i := 1; i <= cislo; i++ {
		vysledek *= i;
	}

	fmt.Printf("Faktorial je: %v \n",vysledek)
}
