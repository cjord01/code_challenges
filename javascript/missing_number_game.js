// For this problem, you make a function that examines an array of numbers ranging between 1 and 10 that’s missing one number and have the function find the number that’s missing.

// For example, the series of numbers could be [2, 1, 5, 4, 6, 9, 7, 8, 10]. This array is missing the number 3. The goal of this problem is to write code that figures out that the number 3 is missing.

function missingNumber(arr) {
    const sorted = arr.sort(function (a, b) {  return a - b;  });
    for (var i = arr[0]; i < arr[arr.length - 1]; i++) {
         if (arr.includes(i)) {
             // do nothing
         } else {
             return i;
         }
    }
}

console.log(missingNumber([2, 1, 5, 4, 6, 9, 7, 8, 10]));
