class Integer
  def dividedBy(n)
    self % n == 0
  end
end

puts (1..1000).select { |x| (x.dividedBy(3) || x.dividedBy(5)) }
              .inject(0) { |sum, item| sum + item }
