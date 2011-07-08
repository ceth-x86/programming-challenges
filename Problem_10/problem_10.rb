require 'mathn'

result = 0

Prime.each { |x|
  break if x >= 2000000;
  result += x
}

puts result
