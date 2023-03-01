# create an algorithm that finds prime numbers

def is_prime?(number)
  if number == 0 || number == 1
    puts "#{number} is not prime"
    return
  end

  for i in (2..number-1) do
    if (number % i) == 0
      puts "#{number} is not prime"
      return
    end
  end

  puts "#{number} is prime"
end

is_prime?(0)
is_prime?(1)
is_prime?(23)
is_prime?(31)
is_prime?(50)
is_prime?(53)
is_prime?(76)
is_prime?(99)
is_prime?(1000)
is_prime?(1777)
is_prime?(2500)
is_prime?(5743)
is_prime?(22225)
is_prime?(28663)
