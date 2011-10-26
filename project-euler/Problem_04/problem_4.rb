p (100..999).to_a.product((100..999).to_a).
  collect { |x| x[0] * x[1] }.
  select { |x| x.to_s == x.to_s.reverse }.
  max
