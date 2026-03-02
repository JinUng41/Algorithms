from collections import deque
import sys

input = sys.stdin.readline
n = int(input())
d = deque()
result = []

handlers = {
    "push": lambda args: d.append(int(args[0])),
    "pop": lambda _: result.append(str(d.popleft() if d else -1)),
    "size": lambda _: result.append(str(len(d))),
    "empty": lambda _: result.append("1" if not d else "0"),
    "front": lambda _: result.append(str(d[0] if d else -1)),
    "back": lambda _: result.append(str(d[-1] if d else -1)),
}

for _ in range(n):
    command = input().split()
    op, args = command[0], command[1:]
    handlers[op](args)

sys.stdout.write("\n".join(result))