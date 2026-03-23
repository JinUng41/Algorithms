n = int(input())
result = 0
for i in range(n):
    digits = list(map(int, str(i)))
    total = i + sum(digits)
    if total == n:
        result = i
        break
print(result)