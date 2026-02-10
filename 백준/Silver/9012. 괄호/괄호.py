t = int(input())
result = ""
for _ in range(t):
    vps = input().strip()
    count = 0
    for char in vps:
        if char == '(':
            count += 1
        else:
            count -= 1
        if count < 0:
            break
    if count == 0:
        result += "YES\n"
    else:
        result += "NO\n"
print(result)