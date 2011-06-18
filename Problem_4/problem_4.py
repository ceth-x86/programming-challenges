polindroms = [(x, y, x * y) for x in range(100, 999) for y in range(100, 999) if str(x * y) == str(x * y)[::-1]]
print max(polindroms, key = lambda item : item[2])

