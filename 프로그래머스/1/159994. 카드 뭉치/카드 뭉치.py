from collections import deque

def solution(cards1, cards2, goal):
    cards1q = deque(cards1)
    cards2q = deque(cards2)
    goalq = deque(goal)
    
    while goalq:
        if cards1q and cards1q[0] == goalq[0]:
            cards1q.popleft()
            goalq.popleft()
        elif cards2q and cards2q[0] == goalq[0]:
            cards2q.popleft()
            goalq.popleft()
        else:
            break

    if not goalq:
        return "Yes"
    else:
        return "No"