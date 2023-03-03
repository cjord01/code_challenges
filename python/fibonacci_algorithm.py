# A Fibonacci Sequence is created by adding two numbers to create the next number in the sequence. You then sum that number with the one preceding it to get the next number,, and so on.

# For example, if you have the sequence 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, then the next number in the sequence is 55.

def fibonacci_generator(number_count):
  numbers = [0]
  if number_count == 1:
    return numbers

  numbers.append(1)

  while len(numbers) != number_count:
    numbers.append(numbers[-1] + numbers[-2])

  return numbers

print(fibonacci_generator(1))
print(fibonacci_generator(2))
print(fibonacci_generator(3))
print(fibonacci_generator(11))
print(fibonacci_generator(20))
