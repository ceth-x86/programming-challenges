def fib():
    x, y = 0, 1
    while True:
        yield x
        x, y = y, x + y

def limit(seq, limit):
    for number in seq:
        if number > limit:
            break
        yield number

def even(seq):
    for number in seq:
        if not number % 2:
            yield number

print sum(even(limit(fib(), 4000000)))
