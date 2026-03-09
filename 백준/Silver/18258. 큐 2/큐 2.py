from collections import deque
import sys
input = sys.stdin.readline

q = deque()
for _ in range(int(input())):
    command = input().split()
    if command[0] == "push":
        q.append(int(command[1]))
    elif command[0] == "pop":
        sys.stdout.write(str(q.popleft() if q else -1) + "\n")
    elif command[0] == "size":
        sys.stdout.write(str(len(q)) + "\n")
    elif command[0] == "empty":
        sys.stdout.write(str(0 if q else 1) + "\n")
    elif command[0] == "front":
        sys.stdout.write(str(q[0] if q else -1) + "\n")
    elif command[0] == "back":
        sys.stdout.write(str(q[-1] if q else -1) + "\n")