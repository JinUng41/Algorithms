isbn = input().strip()
total = 0
weight = 1

for i, ch in enumerate(isbn):
    current_weight = 3 if i % 2 else 1

    if ch == '*':
        weight = current_weight
    else:
        total += int(ch) * current_weight

need = (-total) % 10
print(need if weight == 1 else (need * 7) % 10)