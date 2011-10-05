num = 600_851_475_143
f = 2

num % f == 0 ? num /= f : f += 1 while num > 1
puts f
