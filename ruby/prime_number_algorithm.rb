# create an algorithm that finds prime numbers

def is_prime?(number)
  if number == 0 || number == 1
    return "#{number} is not prime"
  end

  for i in (2..number-1) do
    if (number % i) == 0
      return "#{number} is not prime"
    end
  end

  return "#{number} is prime"
end

puts is_prime?(0)
puts is_prime?(1)
puts is_prime?(23)
puts is_prime?(31)
puts is_prime?(50)
puts is_prime?(53)
puts is_prime?(76)
puts is_prime?(99)
puts is_prime?(1000)
puts is_prime?(1777)
puts is_prime?(2500)
puts is_prime?(5743)
puts is_prime?(22225)
puts is_prime?(28663)
