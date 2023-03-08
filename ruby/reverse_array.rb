# In this problem, your objective is to reverse the order of the numbers in an array. For example, if your array was [8, 2, 9, 4], you would want your code to return [4, 9, 2, 8].

# def reverse_array(arr)
#     arr.reverse
# end

# # without Ruby method
def reverse_array(arr, new_array = [])
   if arr.length >= 1 
       new_array << arr.pop
       reverse_array(arr, new_array)
   else
       new_array
   end
end

print reverse_array([10, 9, 8, 7, 6, 5, 4, 3, 2, 1])
