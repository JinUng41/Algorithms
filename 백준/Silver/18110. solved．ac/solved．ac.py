import sys

input = sys.stdin.readline

n = int(input())
if n == 0:
    print(0)
else:
    values = sorted(int(input()) for _ in range(n))
    cut = int(n * 0.15 + 0.5)
    trimmed = values[cut:n - cut]
    answer = int(sum(trimmed) / len(trimmed) + 0.5)
    print(answer)