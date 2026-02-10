n = int(input())
result = ""
while n > 0:
    remainder = n % 2
    result += str(remainder)
    n = n // 2
print(result[::-1])