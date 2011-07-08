print reduce(lambda x, y : x + y, range(1, 101)) * reduce(lambda x, y : x + y, range(1, 101)) - reduce(lambda x, y : x + y, [x * x for x in range(1, 101)])
