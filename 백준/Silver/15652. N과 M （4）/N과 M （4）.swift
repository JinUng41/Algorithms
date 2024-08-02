func BOJ_15652(_ N: Int, _ M: Int) {
    var arr = [Int]()
    var result = ""
    func backTracking(_ depth: Int) {
        if arr.count == M {
            result += "\(arr.map { "\($0)" }.joined(separator: " "))\n"
            return
        }
        if depth > N { return }
        for i in depth...N {
            arr.append(i)
            backTracking(i)
            arr.removeLast()
        }
    }
    backTracking(1)
    print(result)
}
let NM = readLine()!.split(separator: " ").map { Int($0)! }
BOJ_15652(NM[0], NM[1])