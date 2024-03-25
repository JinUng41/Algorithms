func BOJ_1541(_ input: String) {
    let numbers = input.split { "+-".contains($0) }.map { Int($0)! }
    let operators = input.filter { "+-".contains($0) }.map { String($0) }
    var sum = 0
    var isAdd = true
    for (index, number) in numbers.enumerated() {
        sum += isAdd ? number : -number
        if index < operators.count, operators[operators.index(operators.startIndex, offsetBy: index)] == "-" { isAdd = false }
    }
    print(sum)
}
BOJ_1541(readLine()!)