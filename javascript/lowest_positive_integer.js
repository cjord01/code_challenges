// Write a function that, given an array of integers, returns the smallest positive integer (greater than 0) that does not occur in A.
// [1, 3, 6, 4, 1, 2], should return 5.
// [1, 2, 3], should return 4.
// [−1, −3], should return 1.

function solution(A) {
    var answer = 1;
    while (A.includes(answer)) {
        var index = A.indexOf(answer);
        A.splice(index, 1);
        answer += 1;
    }
    return answer;
} 

console.log(solution([1, 3, 6, 4, 1, 2]));
console.log(solution([1, 2, 3]));
console.log(solution([-1, -3]));

