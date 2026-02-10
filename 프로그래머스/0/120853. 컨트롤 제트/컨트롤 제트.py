def solution(s):
    arr = s.split(' ')
    stack = []
    for i in range(len(arr)):
        if arr[i] == 'Z':
            stack.pop()
        else:
            stack.append(int(arr[i]))
    return sum(stack)