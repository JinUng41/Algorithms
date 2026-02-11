def solution(nums):
    unique_nums = set(nums)
    kind = len(unique_nums)
    target = len(nums)//2
    answer = 0
    if kind > target:
        answer = target
    else:
        answer = kind
    return answer