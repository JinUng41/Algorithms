def solution(answers):
    patterns = [
        [1, 2, 3, 4, 5],
        [2, 1, 2, 3, 2, 4, 2, 5],
        [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    ]

    patternA = [1, 2, 3, 4, 5]
    patternB = [2, 1, 2, 3, 2, 4, 2, 5]
    patternC = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]

    score = [0, 0, 0]
    for i in range(len(answers)):
        if answers[i] == patternA[i % len(patternA)]:
            score[0] += 1
        if answers[i] == patternB[i % len(patternB)]:
            score[1] += 1
        if answers[i] == patternC[i % len(patternC)]:
            score[2] += 1

    max_score = max(score)
    result = []
    for idx, val in enumerate(score):
        if val == max_score:
            result.append(idx + 1)
    return result