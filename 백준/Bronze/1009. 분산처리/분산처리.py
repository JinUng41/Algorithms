import sys
input = sys.stdin.readline
t = int(input())
result = []
for _ in range(t):
    a, b = map(int, input().split())
    last = pow(a, b, 10)
    result.append(str(10 if last == 0 else last))
print('\n'.join(result))