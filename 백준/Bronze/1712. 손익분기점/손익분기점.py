a, b, c = map(int, input().split())
dividor = c-b
if dividor == 0:
    print(-1)
else:
    result = a//(c-b) + 1
    print(result if result > 0 else -1)