n = int(input())
result = 0
start = max(0, n - 9 * len(str(n)))

for i in range(start, n):
    total = i + sum(map(int, str(i)))
    if total == n:
        result = i
        break
print(result)