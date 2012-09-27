package main

import (
	"fmt"
)

func problem_3(num int64) int64 {
	var f int64
	f = 2

	for (num > 1) {
		if num % f == 0 {
			num = num / f
		} else {
			f++
		}
	}

	return f
}


func main() {	
	fmt.Println("Result :", problem_3(600851475143))	
}