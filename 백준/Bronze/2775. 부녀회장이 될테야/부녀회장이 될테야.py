import sys

for _ in range(int(sys.stdin.readline())):
    k = int(sys.stdin.readline())
    n = int(sys.stdin.readline())
    apart = [[0] * (n+1) for _ in range(k+1)]
    for i in range(1, n+1):
        apart[0][i] = i
    for i in range(1, k+1):
        for j in range(1, n+1):
            apart[i][j] = apart[i][j-1] + apart[i-1][j]
    sys.stdout.write(str(apart[k][n]) + "\n")