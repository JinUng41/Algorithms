n = int(input())
dp = [0, 1]
if n == 0 or n == 1:
    print(dp[n])
else:
    for i in range(2, n+1):
        dp.append(dp[i-1] + dp[i-2])
    print(dp[n])