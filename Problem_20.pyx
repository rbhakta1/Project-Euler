import math

number = math.factorial(100)
digits = [int(d) for d in str(number)]
print(digits)

total = sum(digits)
print(total)