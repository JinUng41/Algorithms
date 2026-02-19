n = int(input())
count = 0
while n > 1:
    count += 1
    if n % 5 == 0:
        n -= 5
        continue
    n -= 2
if n == 0:
    print(count)
else:
    print(-1)