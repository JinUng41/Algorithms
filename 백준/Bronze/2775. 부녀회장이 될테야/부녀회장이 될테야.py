import sys

input = sys.stdin.readline

for _ in range(int(input())):
    k = int(input())
    n = int(input())

    dp = [i for i in range(n + 1)]

    for _ in range(k):
        for j in range(1, n + 1):
            dp[j] += dp[j - 1]

    print(dp[n])