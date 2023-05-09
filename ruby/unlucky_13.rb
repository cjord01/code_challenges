# Given a sorted array of numbers, remove any numbers that are divisible by 13. Return the amended array.

def delete_num(nums, num)
    nums.delete(num)
    unlucky_13(nums)
end

def unlucky_13(nums)
	nums.each do |num|
	    if num % 13 == 0
	        delete_num(nums, num)
	    end
	end
	
	nums
end

print unlucky_13([53, 182, 435, 591, 637]) # [53, 435, 591]
# 182 and 637 are divisible by 13.

print unlucky_13([24, 316, 393, 458, 1279]) # [24, 316, 393, 458, 1279]
# No numbers in the array are divisible by 13.

print unlucky_13([104, 351, 455, 806, 871]) # []
# All numbers in the array are divisible by 13.