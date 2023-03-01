# write a function that takes an array of integers and returns the sum of all elements

def add_array(arr):
  total = 0
  for num in arr:
    total += num
  return total

print(add_array([1, 2, 3, 4, 5]))
