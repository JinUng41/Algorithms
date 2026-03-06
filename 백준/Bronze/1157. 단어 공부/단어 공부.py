count_dict = {}
for char in input().upper():
    count_dict[char] = count_dict.get(char, 0) + 1
max_count = max(count_dict.values())
max_keys = [key for key, value in count_dict.items() if value == max_count]
print(max_keys[0] if len(max_keys) == 1 else "?")