// The mean of a group of numbers is calculated by summing all numbers, 
// and dividing this sum by the total count of numbers in the group. 
// Given a sorted array of numbers, return the mean (rounded to one decimal place).

function mean(nums) {
    let sum = 0;

    for (let i = 0; i < nums.length; i++) {
      sum += nums[i];
    }

    let ave = sum / nums.length;
    return ave.toFixed(1);
}

console.log(mean([1, 6, 6, 7, 8, 8, 9, 10, 10])); // 7.2

console.log(mean([1, 3, 8, 9, 9, 10])); // 6.7

console.log(mean([2, 3, 3, 6, 6, 8, 9, 10])); // 5.9
