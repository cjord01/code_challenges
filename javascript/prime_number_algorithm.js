// create an algorithm that finds prime numbers

function isPrime(number) {
    if (number == 0 || number == 1) {
        return `${number} is not prime`;
    }
    
    for (var i = 2; i < number; i++) {
        if ((number % i) == 0) {
            return `${number} is not prime`;
        }
    }

    return `${number} is prime`;
}

console.log(isPrime(0));
console.log(isPrime(1));
console.log(isPrime(23));
console.log(isPrime(31));
console.log(isPrime(50));
console.log(isPrime(53));
console.log(isPrime(76));
console.log(isPrime(99));
console.log(isPrime(1000));
console.log(isPrime(1777));
console.log(isPrime(2500));
console.log(isPrime(5743));
console.log(isPrime(22225));
console.log(isPrime(28663));
