n, m = map(int, input().split())
cards = list(map(int, input().split()))
result = 0
for i in range(0, n-2):
    for j in range(i+1, n-1):
        for k in range(j+1, n):
            sum = cards[i] + cards[j] + cards[k]
            if sum <= m and result < sum:
                result = sum

print(result)