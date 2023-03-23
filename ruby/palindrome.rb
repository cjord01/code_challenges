def is_palindrome?(word)
    if word.size == 0 || word.size == 1
        return true
    end
    
    first_letter = word[0]
    last_letter = word[-1]
    
    if first_letter != last_letter
        return false
    else
        is_palindrome?(word[1..-2])
    end
end

puts is_palindrome?('madam')
puts is_palindrome?('dad')
puts is_palindrome?('false')
puts is_palindrome?('asasasasasasasasasasasasasasasasa')