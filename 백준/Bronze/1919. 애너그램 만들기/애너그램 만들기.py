a = input().strip()
b = input().strip()

count = {}

for char in a:
    count[char] = count.get(char, 0) + 1

for char in b:
    count[char] = count.get(char, 0) - 1

print(sum(abs(value) for value in count.values()))