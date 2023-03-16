# Establish if a given integer is a Curzon number. 
# Given a non-negative integer num, implement a function that returns true if num is a Curzon number, or false if it's not.

def is_curzon?(num)
   exponent = 2 ** num + 1
   multiple = 2 * num + 1
   if exponent % multiple == 0
       true
   else
       false
   end
end

p is_curzon?(5) # true
p is_curzon?(10) # false
p is_curzon?(14) # true
p is_curzon?(16) # false
p is_curzon?(86) # true
p is_curzon?(88) # false
p is_curzon?(134) # true
p is_curzon?(140) # false
p is_curzon?(209) # true
p is_curzon?(215) # false
p is_curzon?(254) # true
p is_curzon?(255) # false
