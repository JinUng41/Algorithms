func BOJ_15650(_ N: Int, _ M: Int) {
    var arr = [Int]()
    
    func backTracking(_ depth: Int) {
        if arr.count == M {
            print(arr.map { "\($0)" }.joined(separator: " "))
            return
        }
        
        if depth > N { return }
        
        for i in depth...N {
            arr.append(i)
            backTracking(i+1)
            arr.removeLast()
        }
    }
    backTracking(1)
}
let NM = readLine()!.split(separator: " ").map { Int($0)! }
BOJ_15650(NM[0], NM[1])