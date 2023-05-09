# Write a function that takes a string and calculates the number of letters and digits within it. 
# Return the result in a hash.

def count_all(string)
    arr = string.split('')
    letters = []
    digits = []
   
    arr.each do |char|
        if char.match?(/[[:alpha:]]/)
            letters << char
        elsif char.match?(/[[:digit:]]/)
            digits << char
        end
    end
   
    hash = {
        LETTERS: letters.size,
        DIGITS: digits.size
    }
end

puts count_all("Hello World") # { "LETTERS":  10, "DIGITS": 0 }

puts count_all("H3ll0 Wor1d") # { "LETTERS":  7, "DIGITS": 3 }

puts count_all("149990") # { "LETTERS": 0, "DIGITS": 6 }