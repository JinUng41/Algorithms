import sys

input = sys.stdin.readline
n = int(input())
sticks = [int(input()) for _ in range(n)]
visible_count = 0
max_height = 0
for stick in reversed(sticks):
    if stick > max_height:
        visible_count += 1
        max_height = stick
sys.stdout.write(str(visible_count))