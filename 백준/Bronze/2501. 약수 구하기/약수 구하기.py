n, k = map(int, input().split())
divs = set()
i = 1
while i * i <= n:
    if n % i == 0:
        divs.add(i)
        divs.add(n // i)
    i += 1
divs = sorted(divs)
print(divs[k-1] if k <= len(divs) else 0)