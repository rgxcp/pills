package main

import (
	"errors"
	"fmt"
)

func exists(inputArray []string, item string) bool {
	for _, value := range inputArray {
		if value == item {
			return true
		}
	}
	return false
}

func linearSearch(inputArray []int, searchValue int) (int, error) {
	for index, value := range inputArray {
		if value == searchValue {
			return index, nil
		}
	}
	return 0, errors.New("Not Exists")
}

func binarySearch(inputArray []int, searchValue int) (int, error) {
	lowerBound := 0
	upperBound := len(inputArray) - 1

	for lowerBound <= upperBound {
		midpoint := (lowerBound + upperBound) / 2
		element := inputArray[midpoint]

		if searchValue == element {
			return midpoint, nil
		}

		if element < searchValue {
			lowerBound = midpoint + 1
		}

		if element > searchValue {
			upperBound = midpoint - 1
		}
	}

	return 0, errors.New("Not Exists")
}

func main() {
	cars := []string{"Mazda", "BWM", "Rolls Royce"}
	fmt.Println(exists(cars, "Bentley"))
	fmt.Println(exists(cars, "Rolls Royce"))

	var result int
	var err error
	numbers := []int{3, 7, 15, 23, 46, 59, 63, 72, 88, 95}
	result, err = linearSearch(numbers, 100)
	if err != nil {
		fmt.Println(err)
	} else {
		fmt.Println(result)
	}

	result, err = linearSearch(numbers, 72)
	if err != nil {
		fmt.Println(err)
	} else {
		fmt.Println(result)
	}

	result, err = binarySearch(numbers, 100)
	if err != nil {
		fmt.Println(err)
	} else {
		fmt.Println(result)
	}

	result, err = binarySearch(numbers, 72)
	if err != nil {
		fmt.Println(err)
	} else {
		fmt.Println(result)
	}
}
