from sys import stdin, stdout

input = stdin.readline
write = stdout.write

m = int(input())
bucket = set()

for _ in range(m):
    command = input().split()
    op = command[0]

    if op == 'add':
        bucket.add(int(command[1]))
    elif op == 'remove':
        bucket.discard(int(command[1]))
    elif op == 'check':
        write('1\n' if int(command[1]) in bucket else '0\n')
    elif op == 'toggle':
        x = int(command[1])
        if x in bucket:
            bucket.remove(x)
        else:
            bucket.add(x)
    elif op == 'all':
        bucket = set(range(1, 21))
    else:
        bucket = set()