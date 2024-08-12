func solution(_ N: Int, _ M: Int, _ numbers: [Int]) {
    var arr = [String](), isVisit = Array(repeating: false, count: N)
    var check = Set<String>()
    var result = ""
    func foo() {
        if arr.count == M {
            let temp = "\(arr.joined(separator: " "))"
            if !check.contains(temp) {
                result += "\(temp)\n"
                check.insert(temp)
            }
            return
        }
        for i in 0..<N where !isVisit[i] {
            isVisit[i] = true
            arr.append("\(numbers[i])")
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