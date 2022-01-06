package main

import "fmt"

func exists(array []string, item string) bool {
	for _, value := range array {
		if value == item {
			return true
		}
	}
	return false
}

func main() {
	cars := []string{"Mazda", "BWM", "Rolls Royce"}
	fmt.Println(exists(cars, "Bentley"))
	fmt.Println(exists(cars, "Rolls Royce"))
}
