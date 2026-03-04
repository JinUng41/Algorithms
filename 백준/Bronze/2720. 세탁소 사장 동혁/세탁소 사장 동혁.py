import sys

input = sys.stdin.readline

for _ in range(int(input())):
    coins = [25, 10, 5, 1]
    count = [0 for _ in range(4)]
    cost = int(input())
    for i in range(0, 4):
        coin = coins[i]
        if cost % coin >= 0:
            div = cost // coin
            count[i] = div
            cost %= coin

    sys.stdout.write(" ".join(map(str, count)) + "\n")