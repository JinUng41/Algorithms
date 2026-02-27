a = input().strip()
b = input().strip()

countA = {}
countB = {}

for char in a:
    countA[char] = countA.get(char, 0) + 1

for char in b:
    countB[char] = countB.get(char, 0) + 1

answer = 0
for char in set(countA) | set(countB):
    answer += abs(countA.get(char, 0) - countB.get(char, 0))

print(answer)