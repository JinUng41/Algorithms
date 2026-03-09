from collections import deque
import sys
input = sys.stdin.readline

q = deque()
result = []
for _ in range(int(input())):
    command = input().split()
    if command[0] == "push":
        q.append(int(command[1]))
    elif command[0] == "pop":
        result.append(q.popleft() if q else -1)
    elif command[0] == "size":
        result.append(len(q))
    elif command[0] == "empty":
        result.append(0 if q else 1)
    elif command[0] == "front":
        result.append(q[0] if q else -1)
    elif command[0] == "back":
        result.append(q[-1] if q else -1)
sys.stdout.write("\n".join(map(str, result)) + "\n")