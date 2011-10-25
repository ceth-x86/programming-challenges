# -*- coding: utf-8 -*-
def problem_30
  (2..maxVal).to_a.select { |x| x == sumDigitsToFifth(x) }. reduce(:+)
end

def sumDigitsToFifth(n)
  digitsOf(n).collect { |x| x**5}. reduce(:+)
end

# digitsOf 1234 -> [1, 2, 3, 4]
def digitsOf(n)
  n.to_s.split(//).collect{ |x| x.to_i }
end

#  максимальное число, которое мы пытаемся представить как сумму пятых
#  степеней. смысл в том, что n растет быстрее, чем разложение n  в
#  многочлен пятой степени
def maxVal
  def canHasDigits(n)
    allNines = 10 ** (n - 1) - 1
    allNines <= sumDigitsToFifth(allNines)
  end

  def maxDigits(n = 1)
    if canHasDigits(n)
      maxDigits(n + 1)
    else
      n - 1
    end
  end

  10 ** maxDigits - 1
end



p problem_30
