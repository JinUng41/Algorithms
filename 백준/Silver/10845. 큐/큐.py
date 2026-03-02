from collections import deque
import sys

input = sys.stdin.readline
n = int(input())
d = deque()
result = []
for _ in range(n):
    command = input().split()
    if command[0] == "push":
        d.append(int(command[1]))
    elif command[0] == "pop":
        result.append(str(-1 if not d else d.popleft()))
    elif command[0] == "size":
        result.append(str(len(d)))
    elif command[0] == "empty":
        result.append(str(1 if not d else 0))
    elif command[0] == "front":
        result.append(str(-1 if not d else d[0]))
    elif command[0] == "back":
        result.append(str(-1 if not d else d[-1]))
sys.stdout.write("\n".join(result))