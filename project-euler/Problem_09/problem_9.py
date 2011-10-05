print [(1000 - b - c, b, c) for c in range(1, 1000) for b in range(1, c) if (1000 - b - c)**2 + b**2 == c**2 ] [0]
