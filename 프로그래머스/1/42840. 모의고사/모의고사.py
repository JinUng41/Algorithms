def solution(answers):
    patterns = [
        [1, 2, 3, 4, 5],
        [2, 1, 2, 3, 2, 4, 2, 5],
        [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    ]
    
    result = [0 for _ in range(len(patterns))]
    for i in range(len(answers)):
        for j in range(len(patterns)):
            if answers[i] == patterns[j][i % len(patterns[j])]:
                result[j] += 1


    max_score = max(result)
    answer = []
    for i in range(len(patterns)):
        if result[i] == max_score:
            answer.append(i + 1)
    return answer