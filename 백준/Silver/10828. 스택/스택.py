n = int(input())
stack = []
result = ""
for _ in range(n):
    command = input().split()
    if command[0] == "push":
        stack.append(int(command[1]))
    elif command[0] == "pop":
        if not stack:
            result += "-1\n"
        else:
            result += str(stack.pop()) + "\n"
    elif command[0] == "size":
        result += str(len(stack)) + "\n"
    elif command[0] == "empty":
        result += str(1 if not stack else 0) + "\n"
    elif command[0] == "top":
        if not stack:
            result += "-1\n"
        else:
            result += str(stack[len(stack)-1]) + "\n"
    else:
        continue
print(result, end="")