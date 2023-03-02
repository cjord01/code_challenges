# Identify the prime numbers within the array, then add all of those prime numbers

def is_prime(number):
  if number == 0 or number == 1:
    return False

  for i in range(2, number - 1):
    if (number % i) == 0:
      return False
  return True

def sum_of_prime(arr):
  just_prime = []
  for num in arr:
    if is_prime(num):
      just_prime.append(num)
 
  print(sum(just_prime))

sum_of_prime([1, 23, 31, 50, 53, 76, 99])
