n = int(input())
arr = list(map(int, input().split()))
t, p = map(int, input().split())
sum = 0
for i in arr:
    if i % t > 0:
        sum += (i//t + 1)
    else:
        sum += i//t
print(sum)
print(str(n//p) + " " + str(n%p))