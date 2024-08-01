func BOJ_15651(_ N: Int, _ M: Int) {
    var arr = [Int]()
    var result = ""
    func backTracking() {
        if arr.count == M {
            result += "\(arr.map { "\($0)" }.joined(separator: " "))\n"
            return
        }
        for i in 1...N {
            arr.append(i)
            backTracking()
            arr.removeLast()
        }
    }
    backTracking()
    print(result)
}
let NM = readLine()!.split(separator: " ").map { Int($0)! }
BOJ_15651(NM[0], NM[1])