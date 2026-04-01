n = int(input())

end = 1
layer = 1

if n == 1:
    print(1)
else:
    while n > end:
        end += 6 * layer
        layer += 1
    print(layer)