puts (1..100).reduce(:+) * (1..100).reduce(:+) - (1..100).collect { |i| i * i }.reduce(:+)

