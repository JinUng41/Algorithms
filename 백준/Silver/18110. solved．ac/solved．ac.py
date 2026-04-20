import sys

input = sys.stdin.readline

n = int(input())
values = [int(input()) for _ in range(n)]
values.sort()

if n == 0:
    print(0)
else:
    cut = int(n * 0.15 + 0.5)
    trimmed = values[cut:n - cut]
    answer = int(sum(trimmed) / len(trimmed) + 0.5)
    print(answer)