package main

import "fmt"

func main() {
	var cislo int
	
	fmt.Scan(&cislo)

	var vysledek  = 1

	for i := 1; i <= cislo; i++ {
		vysledek *= i;
	}

	fmt.Println("Hello World !!! 🎈🎆" , vysledek);
}
