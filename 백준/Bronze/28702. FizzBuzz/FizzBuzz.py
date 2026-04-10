more = 0
num = 0
for i in range(1, 4):
    text = input()
    if text != 'FizzBuzz' and text != 'Fizz' and text != 'Buzz':
        num = int(text)
        more = 4 - i
num += more
if num % 5 == 0 and num % 3 == 0:
    print('FizzBuzz')
elif num % 3 == 0:
    print('Fizz')
elif num % 5 == 0:
    print('Buzz')
else:
    print(num)