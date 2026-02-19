n = int(input())
count = 0
while n > 1:
    if n % 5 == 0:
        count += 1
        n -= 5
        continue
    count += 1
    n -= 2
if n == 0:
    print(count)
else:
    print(-1)