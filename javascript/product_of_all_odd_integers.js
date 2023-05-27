// Create a function that returns the product of all odd integers in an array.

function oddProduct(arr) {
  const odd = [];
  for (const num of arr) {
    if (num % 2 !== 0) {
      odd.push(num);
    }
  }

  if (odd.length < 2) {
    return 0;
  }

  return odd.reduce((a, b) => a * b);
}

console.log(oddProduct([3, 4, 1, 1, 5])); // 15
console.log(oddProduct([5, 5, 8, 2, 4, 32])); // 25
console.log(oddProduct([1, 2, 1, 2, 1, 2, 1, 2])); // 1
console.log(oddProduct([])); // 0
console.log(oddProduct([1])); // 0
