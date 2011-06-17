x = (100..999).map { |a|
  (a..999).map {  |b|
    [a, b, a * b]
  }
}.flatten(1).select { |v|
  v[2].to_s == v[2].to_s.reverse
}.sort { |a, b|
  b[2] <=> a[2]
}

puts '%s x %s = %s' % [x[0][0], x[0][1], x[0][2]]
