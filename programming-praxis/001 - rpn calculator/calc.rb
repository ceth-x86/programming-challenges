expression = "19 2.14 + 4.5 2 4.3 / - *"

stack = Array.new

expression.split.each { |element|
  if ["+", "-", "*", "/"].include? element
    a, b = stack.pop(2)
    case element
    when "+"
      stack.push (a + b)
    when "-"
      stack.push (a - b)
    when "*"
      stack.push (a * b)
    when "/"
      stack.push (a / b).to_f
    end
  elsif
    stack.push element.to_f
  end
}

puts stack
