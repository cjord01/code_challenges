# A Fibonacci Sequence is created by adding two numbers to create the next number in the sequence. You then sum that number with the one preceding it to get the next number,, and so on.

# For example, if you have the sequence 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, then the next number in the sequence is 55.

def fibonacci_generator(number_count)
  numbers = [0]
  return numbers if number_count == 1
  numbers << 1
    
  until numbers.length == number_count 
    numbers << numbers[-1] + numbers[-2]
  end
    
  return numbers
end

p fibonacci_generator(1)
p fibonacci_generator(2)
p fibonacci_generator(3)
p fibonacci_generator(11)
p fibonacci_generator(20)
