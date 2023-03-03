# The factorial of a number is the product of all the positive integers that are less than or equal to the number in question. For example, for the number 6, the factorial would be 1 x 2 x 3 x 4 x 5 x 6 = 720.

def factorial_of(number):
  final_num = 1
  for num in range(1, number + 1):
    final_num *= num
  print(final_num)

factorial_of(6)
