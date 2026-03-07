import sys

input = sys.stdin.readline

n = int(input())
sticks = []
for _ in range(n):
    sticks.append(int(input()))
stack = []
maxH = 0
for stick in reversed(sticks):
    if stick > maxH:
        stack.append(stick)
        maxH = stick

print(len(stack))