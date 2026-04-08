case_num = 0
answers = []
while True:
    l, p, v = map(int, input().split())
    if l == 0 and p == 0 and v == 0:
      break
    
    case_num += 1

    answer = (v // p) * l + min(l, v % p)
    answers.append(f'Case {case_num}: {answer}')
print('\n'.join(answers))