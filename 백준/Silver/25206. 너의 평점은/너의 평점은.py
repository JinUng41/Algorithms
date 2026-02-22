gradePoints = {
    "A+": 4.5, "A0": 4.0,
    "B+": 3.5, "B0": 3.0,
    "C+": 2.5, "C0": 2.0,
    "D+": 1.5, "D0": 1.0,
    "F": 0.0
}
pointsSum = 0.0
creditsSum = 0.0
for _ in range(20):
    _, credit, grade = input().split()
    if grade == "P":
        continue
    credit = float(credit)
    pointsSum += credit * gradePoints[grade]
    creditsSum += credit

print(pointsSum / creditsSum)