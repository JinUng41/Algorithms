str_arr = []
more = 0
num = 0
for i in range(1, 4):
    text = input()
    str_arr.append(text)
    if text != 'FizzBuzz' and text != 'Fizz' and text != 'Buzz':
        num = int(text)
        idx = 4 - i
num += idx
if num % 5 == 0 and num % 3 == 0:
    print('FizzBuzz')
elif num % 3 == 0:
    print('Fizz')
elif num % 5 == 0:
    print('Buzz')
else:
    print(num)