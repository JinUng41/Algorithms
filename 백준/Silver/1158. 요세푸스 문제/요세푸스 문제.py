n, k = map(int, input().split())
people = list(range(1, n + 1))
answer = []
index = 0

while people:
    index = (index + k - 1) % len(people)
    answer.append(str(people.pop(index)))

print("<" + ", ".join(answer) + ">")