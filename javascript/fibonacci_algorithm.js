// A Fibonacci Sequence is created by adding two numbers to create the next number in the sequence. You then sum that number with the one preceding it to get the next number,, and so on.

// For example, if you have the sequence 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, then the next number in the sequence is 55.

function fibonacciGenerator(numberCount) {
    var numbers = [0];
    if (numberCount == 1) {
        return numbers;
    } else {
        numbers.push(1);
    }
    
    while (numbers.length < numberCount) {
        numbers.push((numbers[numbers.length - 1] + numbers[numbers.length - 2]));
    }
    
    return numbers;
}

console.log(fibonacciGenerator(1));
console.log(fibonacciGenerator(2));
console.log(fibonacciGenerator(3));
console.log(fibonacciGenerator(11));
console.log(fibonacciGenerator(20));
