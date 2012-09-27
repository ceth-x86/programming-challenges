package main

import (
	"fmt"
)

func main() {
	result := 0
	x, y := 0, 1

	for (x < 4000000) {
		x, y = y, x + y
		if y % 2 == 0 {
			result += y			
		}		
	}

	fmt.Println("Result :", result)
	
}