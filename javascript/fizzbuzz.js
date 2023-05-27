// prints out numbers from 1 to 100 under the following conditions: Multiples of three, (3, 6, 9, 12, etc.) must be replaced by the word Fizz in the printout, multiples of five, (5, 10, 15, 25, etc.) must be replaced by Buzz, and multiples of both three and five (15, 30, 45, etc.) must be replaced by FizzBuzz.

function FizzBuzz() {
    let i = 1;
    while (i <= 100) {
        if (i % 3 == 0 && i % 5 == 0) {
            console.log('FizzBuzz');
        } else if (i % 5 == 0) {
            console.log('Buzz');
        } else if (i % 3 == 3) {
            console.log('Fizz');
        } else {
            console.log(i);
        }

        i += 1;
    }
}

FizzBuzz();