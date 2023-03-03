# Your objective is to validate if the number is made up of a series of the same digit in a row.

# For example, the number 555 would qualify. A number with only two out of three digits repeating, such as 554, wouldn’t qualify.

def repeating_digits?(number)
  puts number.to_s.squeeze(number.to_s[0]).size == 1
end

repeating_digits?(22)
repeating_digits?(34)
repeating_digits?(444)
repeating_digits?(556)
repeating_digits?(7777)
repeating_digits?(8989)
repeating_digits?(11111)
repeating_digits?(99998)
