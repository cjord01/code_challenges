// Write a function that takes a string and calculates the number of letters and digits within it. 
// Return the result in a hash.

function isDigit(character) {
  return !isNaN(parseInt(character));
}

function isLetter(character) {
  return character >= 'a' && character <= 'z' || character >= 'A' && character <= 'Z';
}

function count_all(string) {
   let arr = string.split('');
   let letters = [];
   let digits = [];
   
   for (let i = 0; i < arr.length; i++) {
       if (isLetter(arr[i])) {
           letters.push(arr[i]);
       } else if (isDigit(arr[i])) {
           digits.push(arr[i]);
       }
   }
   
   return {
       Letters: letters.length,
       Digits: digits.length
   }
}

console.log(JSON.stringify(count_all("Hello World")));

console.log(JSON.stringify(count_all("H3ll0 Wor1d")));

console.log(JSON.stringify(count_all("149990")));
