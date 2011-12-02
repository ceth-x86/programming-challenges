
Problem_01 := Object clone
Problem_01 result := 0
Problem_01 check_value := method(a,
	if((a % 3 == 0) or (a % 5 == 0), result = result + a))


for(a, 1, 1000,	
	Problem_01 check_value(a)
)

Problem_01 result println