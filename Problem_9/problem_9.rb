1.upto(1000) { |c|
  1.upto(c) { |b|
    a = 1000 - b - c
    if a**2 + b**2 == c**2
        puts a, b, c
        exit
    end
  }
}
