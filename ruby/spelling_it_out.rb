# Create a function which takes in a word and spells it out, by consecutively adding letters until the full word is completed.

def spelling(str)
	arr = []
	i = 0
	while i < str.length
		arr << str[0..i]
		i += 1
	end
	arr
end

print spelling("bee") # ["b", "be", "bee"]

print spelling("happy") # ["h", "ha", "hap", "happ", "happy"]

print spelling("eagerly") # ["e", "ea", "eag", "eage", "eager", "eagerl", "eagerly"]
