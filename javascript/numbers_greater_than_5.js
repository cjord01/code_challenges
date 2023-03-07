// Given an array, count how many items are greater than 5.

function greaterThanCounter(compareNum, arr) {
    var counter = 0;
    
    for (var i = 0; i < arr.length; i++) {
        if (arr[i] > compareNum) {
            counter += 1;
        }
    }

    console.log(counter);
}

greaterThanCounter(5, [17, 7, 3, 6, 10, 1]);
greaterThanCounter(1, [17, 7, 3, 6, 10, 2]);