# Create a function that returns the product of all odd integers in an array.

def odd_product(arr)
	odd = []
	arr.each do |num|
	    if num.odd?
	        odd << num
	    end
	end
	
	if odd.empty?
	    return 0
	end
	
	odd.reduce(:*)
end

puts odd_product([3, 4, 1, 1, 5]) # 15

puts odd_product([5, 5, 8, 2, 4, 32]) # 25

puts odd_product([1, 2, 1, 2, 1, 2, 1, 2]) # 1

puts odd_product([]) # 0
