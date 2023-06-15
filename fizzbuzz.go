package main

import "fmt"

func main() {
	for i := 1; i <= 100; i++ {
		printIt := true
		if i%3 == 0 {
			fmt.Print("Fizz")
			printIt = false
		}
		if i%5 == 0 {
			fmt.Print("Buzz")
			printIt = false
		}
		if printIt {
			fmt.Print(i)
		}
		fmt.Println()
	}
}
