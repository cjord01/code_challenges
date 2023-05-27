// Something which is not true is false, but something which is not not true is true! 
// Create a function where given n number of "not", evaluate whether it's true or false.

function notEvaluator(notNumber) {
    return notNumber % 2 == 0;
}

console.log(notEvaluator(5));
console.log(notEvaluator(6))