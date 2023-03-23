# prints out numbers from 1 to 100 under the following conditions: Multiples of three, (3, 6, 9, 12, etc.) must be replaced by the word Fizz in the printout, multiples of five, (5, 10, 15, 25, etc.) must be replaced by Buzz, and multiples of both three and five (15, 30, 45, etc.) must be replaced by FizzBuzz.

def fizz_buzz
    (1..100).each do |num|
        if num % 3 == 0 && num % 5 == 0
            puts 'FizzBuzz'
        elsif num % 5 == 0
            puts 'Buzz'
        elsif num % 3 == 0
            puts 'Fizz'
        else
            puts num
        end
    end
end

fizz_buzz
