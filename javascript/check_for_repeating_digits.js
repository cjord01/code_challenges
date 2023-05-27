// Your objective is to validate if the number is made up of a series of the same digit in a row.

// For example, the number 555 would qualify. A number with only two out of three digits repeating, such as 554, wouldn’t qualify.

function repeatingDigits(number) {
    return Array.from(new Set(number.toString().split(''))).toString().length == 1;
}

console.log(repeatingDigits(22));
console.log(repeatingDigits(34));
console.log(repeatingDigits(444));
console.log(repeatingDigits(556));
console.log(repeatingDigits(7777));
console.log(repeatingDigits(8989));
console.log(repeatingDigits(11111));
console.log(repeatingDigits(99998));