func solution(_ N: Int, _ M: Int, _ numbers: [Int]) {
    var arr = [String](), isVisit = Array(repeating: false, count: N)
    var result = ""
    func foo() {
        var temp = 0
        if arr.count == M {
            result += "\(arr.joined(separator: " "))\n"
            return
        }
        for i in 0..<N where !isVisit[i] && temp != numbers[i] {
            isVisit[i] = true
            arr.append("\(numbers[i])")
            temp = numbers[i]
            foo()
            arr.removeLast()
            isVisit[i] = false
        }
    }
    foo()
    print(result)
}
let NM = readLine()!.split(separator: " ").map { Int($0)! }
solution(NM[0], NM[1], readLine()!.split(separator: " ").map { Int($0)! }.sorted())