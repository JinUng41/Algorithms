n, k = map(int, input().split())
divs = set()
for i in range(1, n//2 + 1):
    if n % i == 0:
        divs.add(i)
        divs.add(n//i)
divs = sorted(divs)
print(divs[k-1] if k <= len(divs) else 0)