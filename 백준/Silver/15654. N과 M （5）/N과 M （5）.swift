let NM = readLine()!.split(separator: " ").map { Int($0)! }
BOJ_15654(NM[0], NM[1])
func BOJ_15654(_ N: Int, _ M: Int) {
    let input = readLine()!.split(separator: " ").map { Int($0)! }.sorted()
    var arr = [Int](), isVisit = Array(repeating: false, count: N+1)
    var result = ""
    func backTracking() {
        if arr.count == M {
            result += "\(arr.map { "\($0)" }.joined(separator: " "))\n"
            return
        }
        for i in 1...N {
            if !isVisit[i] {
                arr.append(input[i-1])
                isVisit[i] = true
                backTracking()
                isVisit[i] = false
                _ = arr.popLast()
            }
        }
    }
    backTracking()
    print(result)
}