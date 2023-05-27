// The factorial of a number is the product of all the positive integers that are less than or equal to the number in question. 
// For example, for the number 6, the factorial would be 1 x 2 x 3 x 4 x 5 x 6 = 720.

function factorialOf(number) {
    let finalNum = 1;
    for (let i = 1; i <= number; i++) {
        finalNum *= i;
    }
    
    console.log(finalNum);
}

factorialOf(6);
