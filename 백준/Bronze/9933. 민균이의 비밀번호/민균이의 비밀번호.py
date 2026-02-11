N = int(input())
words = [input().strip() for _ in range(N)]
word_set = set(words)
for w in words:
    if w[::-1] in word_set:
        print(len(w), w[len(w)//2])
        break