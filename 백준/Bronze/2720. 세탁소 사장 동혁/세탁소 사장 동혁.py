import sys

input = sys.stdin.readline

for _ in range(int(input())):
    coins = [0 for _ in range(4)]
    cost = int(input())
    while cost > 0:
        if cost >= 25:
            coins[0] += 1
            cost -= 25
        elif cost >= 10:
            coins[1] += 1
            cost -= 10
        elif cost >= 5:
            coins[2] += 1
            cost -= 5
        elif cost >= 1:
            coins[3] += 1
            cost -= 1
    
    sys.stdout.write(" ".join(map(str, coins)) + "\n")