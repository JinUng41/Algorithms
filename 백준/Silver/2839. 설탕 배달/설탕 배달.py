n = int(input())
count = 0
while n >= 3:
    if n % 5 == 0:
        n -= 5
        count += 1
        continue
    n -= 3
    count += 1
print(count if n == 0 else -1)