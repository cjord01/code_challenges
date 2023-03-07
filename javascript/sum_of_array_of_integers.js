// write a function that takes an array of integers and returns the sum of all elements

function addArray(arr) {
    var total = 0;
    for (var i = 0; i < arr.length; i++) {
        total += arr[i];
    }
    
    return total;
}

console.log(addArray([1, 2, 3, 4, 5])); // -> 15