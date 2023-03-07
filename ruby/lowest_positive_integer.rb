# Write a function that, given an array of integers, returns the smallest positive integer (greater than 0) that does not occur in A.
# [1, 3, 6, 4, 1, 2], should return 5.
# [1, 2, 3], should return 4.
# [−1, −3], should return 1.

def solution(a, answer = 1)
    if a.include?(answer)
        solution(a, answer += 1)
    else
        return answer
    end
end

p solution([1, 3, 6, 4, 1, 2])
p solution([1, 2, 3])
p solution([-1, -3])