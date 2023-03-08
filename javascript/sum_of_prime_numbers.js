// Identify the prime numbers within the array, then add all of those prime numbers

function isPrime(number) {
    if (number == 0 || number == 1) {
        return false;
    } else if (number == 2) {
        return true;
    }
    
    for (var i = 2; i < number; i++) {
        if ((number % i) == 0) {
            return false;
        }
    }
    return true;
}

function sumOfPrime(arr) {
    var justPrime = [];
    for (var i = 0; i < arr.length; i++) {
        if (isPrime(arr[i])) {
            justPrime.push(arr[i]);
        }
    }
    
    return justPrime.reduce((partialSum, a) => partialSum + a, 0);
}

console.log(sumOfPrime([1, 23, 31, 50, 53, 76, 99]));
// console.log(isPrime(1)); // false
// console.log(isPrime(2)); // true
// console.log(isPrime(3)); // true
// console.log(isPrime(4)); // false
// console.log(isPrime(5)); // true
// console.log(isPrime(6)); // false

