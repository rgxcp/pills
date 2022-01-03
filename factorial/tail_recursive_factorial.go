package main

import "fmt"

func factorial(total uint, n uint) uint {
	if n == 0 {
		return total
	}

	return factorial(total*n, n-1)
}

func main() {
	fmt.Println(factorial(1, 0))
	fmt.Println(factorial(1, 1))
	fmt.Println(factorial(1, 2))
	fmt.Println(factorial(1, 3))
	fmt.Println(factorial(1, 4))
	fmt.Println(factorial(1, 5))
}
