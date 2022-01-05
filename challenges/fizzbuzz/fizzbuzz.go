package main

import (
	"fmt"
	"strconv"
	"strings"
)

func main() {
	results := []string{}

	for i := 1; i <= 20; i++ {
		if i%15 == 0 {
			results = append(results, "FizzBuzz")
		} else if i%3 == 0 {
			results = append(results, "Fizz")
		} else if i%5 == 0 {
			results = append(results, "Buzz")
		} else {
			results = append(results, strconv.Itoa(i))
		}
	}

	fmt.Println(strings.Join(results, ", "))
}
