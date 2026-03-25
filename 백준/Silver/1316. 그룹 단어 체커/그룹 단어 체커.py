import sys

input = sys.stdin.readline
count = 0
for _ in range(int(input())):
    word = input().strip()
    prev = ""
    seen = set()
    is_group_word = True

    for char in word:
        if char != prev:
            if char in seen:
                is_group_word = False
                break
            seen.add(char)
        prev = char

    if is_group_word:
        count += 1

print(count)