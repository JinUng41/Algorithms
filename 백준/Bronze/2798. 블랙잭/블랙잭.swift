let NM = readLine()!.split(separator: " ").map { Int($0)! }
let numbers = readLine()!.split(separator: " ").map { Int($0)! }.sorted()
var max = 0

for i in 0..<NM[0] {
    for j in i + 1..<NM[0] {
        for k in j + 1..<NM[0] {
            guard numbers[i] + numbers[j] + numbers[k] <= NM[1],
                  max < numbers[i] + numbers[j] + numbers[k]
            else {
                continue
            }
            max = numbers[i] + numbers[j] + numbers[k]
        }
    }
}
print(max)