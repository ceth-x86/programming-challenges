import math

def is_prime(num):
    return not (num < 2 or any(num % x == 0 for x in xrange(2, int(num**0.5) + 1)))

current_prime = 0
primes = 0
counter = 0

while(primes < 10001):
    if(is_prime(counter)):
        current_prime = counter
        primes += 1
    counter += 1

print current_prime
