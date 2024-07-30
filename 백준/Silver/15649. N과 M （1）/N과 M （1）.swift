func BOJ_15649(_ N: Int, _ M: Int) {
    var arr = [Int](), isVisit = Array(repeating: false, count: N+1)
    
    func backTracking() {
        if arr.count == M {
            print(arr.map { "\($0)" }.joined(separator: " "))
            return
        }
        
        for i in 1...N {
            if !isVisit[i] {
                isVisit[i] = true
                arr.append(i)
                backTracking()
                arr.removeLast()
                isVisit[i] = false
            }
        }
    }
    backTracking()
}
let NM = readLine()!.split(separator: " ").map { Int($0)! }
BOJ_15649(NM[0], NM[1])