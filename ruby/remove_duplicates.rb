# Given a sorted array of integers, write a function to remove any duplicates.

def remove_duplicates(numbers)
    previous_number = nil
    numbers.each_with_index do |number, i|
        if previous_number == nil
            previous_number = number
        else
            if previous_number == number
                numbers.delete_at(i)
                remove_duplicates(numbers)
            else
                previous_number = number
            end
        end
    end
    
    numbers
end

print remove_duplicates([1,2,3,4,5,5,6,7,8,9])
print remove_duplicates([1,1,1,1,1,1])
print remove_duplicates([1, 1, 2, 2, 3, 3, 3, 4, 4, 5, 6, 7, 7])