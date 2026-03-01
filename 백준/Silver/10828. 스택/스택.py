import sys

input = sys.stdin.readline

n = int(input())
stack = []
result = []
for _ in range(n):
    command = input().split()
    action = command[0]
    if action == "push":
        stack.append(int(command[1]))
    elif action == "pop":
        result.append(str(stack.pop() if stack else -1))
    elif action == "size":
        result.append(str(len(stack)))
    elif action == "empty":
        result.append("0" if stack else "1")
    elif action == "top":
        result.append(str(stack[-1] if stack else -1))
sys.stdout.write("\n".join(result))