t = int(input())
result = ""
for _ in range(t):
    vps = list(input().strip())
    count = 0
    ok = True
    for c in vps:
        if c == '(':
            count += 1
        else:
            count -= 1
        if count < 0:
            ok = False
            break
    if ok and count == 0:
        result += "YES\n"
    else:
        result += "NO\n"
print(result)