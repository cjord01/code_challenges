# For this problem, you make a function that examines an array of numbers ranging between 1 and 10 that’s missing one number and have the function find the number that’s missing.

# For example, the series of numbers could be [2, 1, 5, 4, 6, 9, 7, 8, 10]. This array is missing the number 3. The goal of this problem is to write code that figures out that the number 3 is missing.

# Ruby has an expression called “findmissingnumber” that you can use to examine the array you’ve written. You can instruct Ruby to compare that array to one that has the missing number, and Ruby’s internal logic can pinpoint the integer that “should” be there.

def missing_number(arr)
    (arr.sort[0]..arr.sort[-1]).each do |num|
        if (!arr.include?(num))
            return num
        end
    end
end

print missing_number([2, 1, 5, 4, 6, 9, 7, 8, 10])
