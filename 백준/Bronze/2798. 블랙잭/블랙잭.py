n, m = map(int, input().split())
cards = list(map(int, input().split()))
cards.sort(reverse=True)

result = 0
for i in range(0, n-2):
    for j in range(i+1, n-1):
        for k in range(j+1, n):
            current = cards[i] + cards[j] + cards[k]
            if current > m:
                continue
            if result < current:
                result = current
            break
        if result == m:
            break
    if result == m:
        break
print(result)