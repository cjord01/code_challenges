# write a function that takes an array of integers and returns the sum of all elements

array = [1, 2, 3, 4, 5] # -> 15

def add_array(arr)
  return arr.sum
end

# # without using Ruby method
# def add_array(arr)
#   total = 0
#   arr.each do |num|
#     total += num
#   end
#   return total
# end

p add_array(array)
