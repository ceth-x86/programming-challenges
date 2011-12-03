Problem_03 := Object clone
Problem_03 calc := method(num,
	f := 2

	while(num > 1,
		if(num % f == 0, num = num / f, f = f + 1)
	)

	f println
)

Problem_03 calc(600851475143)