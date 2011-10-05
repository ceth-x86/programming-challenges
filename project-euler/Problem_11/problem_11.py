def matrix():
    matrix = []
    for line in open("problem_11.data", "r").readlines():
        matrix.append([int(x) for x in line.split(" ")])
    return matrix

max, product = 0, 0
matrix = matrix()

# left and right
for x in range(0,17):
    for y in xrange(0,20):
        product = matrix[y][x] * matrix[y][x+1] * \
          matrix[y][x+2] * matrix[y][x+3]
        if product > max : max = product 

# up and down
for x in range(0,20):
    for y in xrange(0,17):
        product = matrix[y][x] * matrix[y+1][x] * \
          matrix[y+2][x] * matrix[y+3][x]
        if product > max : max = product

# diagonal right
for x in range(0,17):
    for y in xrange(0,17):
        product = matrix[y][x] * matrix[y+1][x+1] * \
          matrix[y+2][x+2] * matrix[y+3][x+3]
        if product > max: max = product 

# diagonal left
for x in range(0,17):
    for y in xrange(0,17):
        product = matrix[y][x+3] * matrix[y+1][x+2] * \
          matrix[y+2][x+1] * matrix[y+3][x]
        if product > max : max = product  

print max

