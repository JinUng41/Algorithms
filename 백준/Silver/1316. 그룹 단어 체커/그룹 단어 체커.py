import sys

input = sys.stdin.readline
count = 0
for _ in range(int(input())):
    word = input().strip()
    seen = {word[0]}
    is_group_word = True

    for i in range(1, len(word)):
        if word[i] == word[i - 1]:
            continue
        if word[i] in seen:
            is_group_word = False
            break
        seen.add(word[i])

    if is_group_word:
        count += 1

print(count)