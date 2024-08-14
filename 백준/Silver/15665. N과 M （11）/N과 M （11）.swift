func solution(_ N: Int, _ M: Int, _ numbers: [Int]) {
    var arr = [String]()
    var result = ""
    func foo(_ depth: Int) {
        var temp = 0
        if arr.count == M {
            result += "\(arr.joined(separator: " "))\n"
            return
        }
        for i in depth..<N where temp != numbers[i] {
            arr.append("\(numbers[i])")
            temp = numbers[i]
            foo(depth)
            arr.removeLast()
        }
    }
    foo(0)
    print(result)
}
let NM = readLine()!.split(separator: " ").map { Int($0)! }
solution(NM[0], NM[1], readLine()!.split(separator: " ").map { Int($0)! }.sorted())