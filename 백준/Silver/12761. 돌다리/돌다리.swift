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
    var q = Queue<(Int, Int)>()
    q.enq((N, 0))
    isVisit[N] = true
    while !q.isEmpty {
        let (now, count) = q.deq()
        if now == M {
            print(count)
            return
        }
        for new in [now-1, now+1, now-A, now+A, now-B, now+B, now*A, now*B] {
            if new >= 0, new <= 100_000, !isVisit[new] {
                q.enq((new, count+1))
                isVisit[new] = true
            }
        }
    }
}
BOJ_12761(readLine()!.split(separator: " ").map { Int($0)! })