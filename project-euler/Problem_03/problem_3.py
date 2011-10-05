def problem_3(num):
    f = 2

    while num > 1:
        if num % f == 0:
            num = num / f
        else:
            f = f + 1

    return f

print problem_3(600851475143)

