n = int(input())
words = set()
for _ in range(n):
    words.add(input().strip())
result = list(words)
result.sort(key=lambda x: (len(x), x))
print('\n'.join(result))