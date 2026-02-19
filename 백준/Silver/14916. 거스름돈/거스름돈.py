n = int(input())
count = 0
while n > 1:
    count += 1
    n -= 5 if n % 5 == 0 else 2
print(count if n == 0 else -1)