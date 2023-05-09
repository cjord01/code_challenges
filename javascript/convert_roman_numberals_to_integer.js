// Roman numerals are usually written largest to smallest from left to right. 
// However, the numeral for four is not IIII. 
// Instead, the number four is written as IV. 
// Because the one is before the five we subtract it making four. 
// The same principle applies to the number nine, which is written as IX. 
// There are six instances where subtraction is used:

// I can be placed before V (5) and X (10) to make 4 and 9. 
// X can be placed before L (50) and C (100) to make 40 and 90. 
// C can be placed before D (500) and M (1000) to make 400 and 900.

// Given a roman numeral, convert it to an integer.

function romanToInteger(s) {
  const hash = {
    'I': 1,
    'V': 5,
    'X': 10,
    'L': 50,
    'C': 100,
    'D': 500,
    'M': 1000,
  };

  let total = 0;
  let i = 0;

  while (i < s.length) {
    if (i != s.length - 1 && hash[s[i]] < hash[s[i + 1]]) {
      total += hash[s[i + 1]] - hash[s[i]];
      i++;
    } else {
      total += hash[s[i]];
    }

    i++;
  }

  return total;
}

console.log(romanToInteger("III") == 3);
console.log(romanToInteger("LVIII") == 58);
console.log(romanToInteger("MCMXCIV") == 1994);
