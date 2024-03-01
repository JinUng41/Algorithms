var array: [[Int]] = []
for _ in 0...8 {
    let input = readLine()!.split(separator: " ").map { Int("\($0)")! }
    array.append(input)
}
var maxNumber = array.flatMap { $0 }.max()!
for i in 0..<9 {
    for j in 0..<9 {
        if array[i][j] == maxNumber {
            print(maxNumber)
            print("\(i + 1) \(j + 1)")
        }
    }
}