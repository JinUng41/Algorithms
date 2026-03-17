import sys

input = sys.stdin.readline
k = int(input())
arr = []
for _ in range(k):
    n = int(input())
    if n == 0 and arr:
        arr.pop()
    else:
        arr.append(n)
sys.stdout.write(str(sum(arr)) + "\n")