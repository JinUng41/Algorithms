import sys

input = sys.stdin.readline

output = []
n = int(input())

numbers = []
freq = {}
total = 0

# 숫자 입력받기
for _ in range(n):
    x = int(input())
    numbers.append(x)
    total += x
    freq[x] = freq.get(x, 0) + 1

numbers.sort()

# 산술평균
mean = total / n
avg = int(mean + 0.5) if mean >= 0 else int(mean - 0.5)
output.append(str(avg))

# 중앙값
output.append(str(numbers[n // 2]))

# 최빈값
max_freq = max(freq.values())
modes = sorted(num for num, count in freq.items() if count == max_freq)
output.append(str(modes[1] if len(modes) > 1 else modes[0]))

# 범위
output.append(str(numbers[-1] - numbers[0]))

print('\n'.join(output))