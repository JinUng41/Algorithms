let input = readLine()!
var sum = 0

for character in input {
    switch character {
    case "A", "B", "C": // 2
        sum += 3
    case "D", "E", "F":
        sum += 4
    case "G", "H", "I":
        sum += 5
    case "J", "K", "L":
        sum += 6
    case "M", "N", "O":
        sum += 7
    case "P", "Q", "R", "S":
        sum += 8
    case "T", "U", "V":
        sum += 9
    case "W", "X", "Y", "Z":
        sum += 10
    default:
        sum += 0
    }
}

print(sum)