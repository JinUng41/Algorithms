s = input().upper()
counts = [0] * 26
for ch in s:
    counts[ord(ch) - 65] += 1
m = max(counts)
print("?" if counts.count(m) > 1 else chr(counts.index(m) + 65))