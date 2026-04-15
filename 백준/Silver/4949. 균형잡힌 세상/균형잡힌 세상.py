import sys

output = []
pairs = {')': '(', ']': '['}

for line in sys.stdin:
    text = line.rstrip('\n')
    if text == '.':
        break

    stack = []
    valid = True

    for char in text:
        if char in '([':
            stack.append(char)
        elif char in ')]':
            if not stack or stack[-1] != pairs[char]:
                valid = False
                break
            stack.pop()

    output.append('yes' if valid and not stack else 'no')

print('\n'.join(output))