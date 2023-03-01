# Given an array, count how many items are greater than 5.

def greater_than_counter(compare_number, array):
  counter = 0
    
  for num in array:
    if num > compare_number:
      counter += 1
            
  print(counter)

array =  [17, 7, 3, 6, 10, 1]

greater_than_counter(5, array)
