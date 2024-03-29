struct Queue<T> {
    private var input = [T](), output = [T]()
    var isEmpty: Bool { input.isEmpty && output.isEmpty }
    mutating func enq(_ new: T) { input.append(new) }
    mutating func deq() -> T {
        if output.isEmpty {
            output = input.reversed()
            input = []
        }
        return output.removeLast()
    }
}
func BOJ_12761(_ input: [Int]) {
    let A = input[0], B = input[1], N = input[2], M = input[3]
    var isVisit = Array(repeating: false, count: 100_001)
    var distance = Array(repeating: 0, count: 100_001)
    var q = Queue<Int>()
    q.enq(N)
    isVisit[N] = true
    func check(_ n: Int) -> Bool { return n >= 0 && n <= 100_000 && !isVisit[n] }
    while !q.isEmpty {
        let now = q.deq()
        if now == M {
            print(distance[now])
            return
        }
        for new in [now-1, now+1, now-A, now+A, now-B, now+B, now*A, now*B] {
            if check(new) {
                q.enq(new)
                isVisit[new] = true
                distance[new] = distance[now]+1
            }
        }
    }
}
BOJ_12761(readLine()!.split(separator: " ").map { Int($0)! })