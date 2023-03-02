# Identify the prime numbers within the array, then add all of those prime numbers

def is_prime?(number)
  if number == 0 || number == 1
    return false
  end

  for i in (2..number-1) do
    if (number % i) == 0
      return false
    end
  end
  true
end

def sum_of_prime(arr)
  just_prime = []
  arr.each do |num|
    if is_prime?(num) 
      just_prime << num
    end
  end
  
  puts just_prime.sum
end

sum_of_prime([1, 23, 31, 50, 53, 76, 99])
