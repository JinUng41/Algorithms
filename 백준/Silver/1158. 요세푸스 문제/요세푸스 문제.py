from collections import deque

n, k = map(int, input().split())
q = deque(range(1, n + 1))
answer = []
while q:
    step = (k - 1) % len(q)
    q.rotate(-step)
    answer.append(str(q.popleft()))
print('<' + ', '.join(answer) + '>')