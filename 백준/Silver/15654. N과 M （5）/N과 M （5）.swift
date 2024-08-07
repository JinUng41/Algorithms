func BOJ_15651(_ N: Int, _ M: Int) {
    let input = readLine()!.split(separator: " ").map { Int($0)! }.sorted()
    var arr = [String](), isVisit = Array(repeating: false, count: N+1)
    var result = ""
    func foo(_ depth: Int) {
        if depth == M {
            result += "\(arr.joined(separator: " "))\n"
            return
        }
        for i in 1...N where !isVisit[i] {
            isVisit[i] = true
            arr.append("\(input[i-1])")
            foo(depth+1)
            arr.removeLast()
            isVisit[i] = false
        }
    }
    foo(0)
    print(result)
}
let NM = readLine()!.split(separator: " ").map { Int($0)! }
BOJ_15651(NM[0], NM[1])