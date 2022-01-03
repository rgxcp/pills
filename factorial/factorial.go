package main

import "fmt"

func factorial(n uint) uint {
	if n == 0 {
		return 1
	}

	var result uint = 1
	for i := n; i >= 1; i-- {
		result *= i
	}
	return result
}

func main() {
	fmt.Println(factorial(0))
	fmt.Println(factorial(1))
	fmt.Println(factorial(2))
	fmt.Println(factorial(3))
	fmt.Println(factorial(4))
	fmt.Println(factorial(5))
}
