n = 0
for i in range(1, 4):
    s = input().strip()
    if s.isdigit():
        n = int(s) + (4 - i)
ans = ""
if n % 3 == 0:
    ans += "Fizz"
if n % 5 == 0:
    ans += "Buzz"
print(ans or n)