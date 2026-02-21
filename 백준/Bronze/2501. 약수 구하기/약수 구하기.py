n, k = map(int, input().split())
divs = []
i = 1
while i * i <= n:
    if n % i == 0:
        divs.append(i)
        j = n // i
        if j != i:
            divs.append(j)
    i += 1
divs.sort()
print(divs[k-1] if k <= len(divs) else 0)