expression = "19 2.14 + 4.5 2 4.3 / - *"

stack = []

for element in expression.split():
    if element in ["+", "-", "*", "/"]:
        b = stack.pop()
        a = stack.pop()
        if element == "+":
            stack.append(a + b)
        elif element == "-":
            stack.append(a - b)
        elif element == "*":
            stack.append(a * b)
        elif element == "/":
            stack.append(a / b)
    else:
        stack.append(float(element))

print(stack[0])
