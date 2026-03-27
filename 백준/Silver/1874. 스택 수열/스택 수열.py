import sys

input = sys.stdin.readline

n = int(input())
stack = []
result = []
next_num = 1
possible = True

for _ in range(n):
    x = int(input())
    while next_num <= x:
        stack.append(next_num)
        result.append('+')
        next_num += 1

    if not stack or stack[-1] != x:
        possible = False
        break

    stack.pop()
    result.append('-')

print('\n'.join(result) if possible else 'NO')