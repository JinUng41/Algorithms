from collections import deque
import sys
input = sys.stdin.readline

q = deque()
result = []

handlers = {
    "push": lambda x: q.append(int(x)),
    "pop": lambda: result.append(q.popleft() if q else -1),
    "size": lambda: result.append(len(q)),
    "empty": lambda: result.append(0 if q else 1),
    "front": lambda: result.append(q[0] if q else -1),
    "back": lambda: result.append(q[-1] if q else -1),
}

for _ in range(int(input())):
    command = input().split()
    cmd = command[0]
    args = command[1:]
    handlers[cmd](*args)

sys.stdout.write("\n".join(map(str, result)) + "\n")