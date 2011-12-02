Fib := Object clone
Fib a := 1
Fib b := 2
Fib next := method(
	c := a
    a = b
    b = c + a
    return b
)

Problem_02 := Object clone
Problem_02 result := 2
Problem_02 calc := method(
	next_v := Fib next
	while(next_v < 4000000,
		if(next_v % 2 == 0,
			result = result + next_v
		)
		next_v = Fib next
	)
)

Problem_02 calc
Problem_02 result println
