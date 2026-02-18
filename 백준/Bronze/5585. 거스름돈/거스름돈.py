remainder = 1000-int(input())
result = 0
coins = [500, 100, 50, 10, 5, 1]
for coin in coins:
    result += remainder // coin
    remainder %= coin
print(result)