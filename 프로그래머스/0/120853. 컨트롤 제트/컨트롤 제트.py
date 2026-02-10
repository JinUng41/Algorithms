def solution(s):
    arr = s.split(' ')
    stack = []
    for char in arr:
        if char == 'Z':
            stack.pop()
        else:
            stack.append(int(char))
    return sum(stack)