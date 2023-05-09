# Something which is not true is false, but something which is not not true is true! Create a function where given n number of "not", evaluate whether it's true or false.

def not_not_not(n, b)
	if n == 0 || n.even?
        b
	elsif n.odd? && b == true
	    false
    elsif n.odd? && b == false
        true
	end
end

puts not_not_not(1, true) # false
# Not true.

puts not_not_not(2, false) # false
# Not not false.

puts not_not_not(6, true) # true
# Not not not not not not true.