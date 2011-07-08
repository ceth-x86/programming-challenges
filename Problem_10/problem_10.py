import math

def is_prime(num):
    return not (num < 2 or any(num % x == 0 for x in xrange(2, int(num**0.5) + 1)))

result = 0
counter = 0

while(counter < 2000000):
    if(is_prime(counter)):
        result += counter
    counter += 1

print result
