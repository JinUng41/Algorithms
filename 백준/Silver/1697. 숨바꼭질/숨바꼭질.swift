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
func BOJ_1697(_ N: Int, _ K: Int) {
    var isVisit = Array(repeating: false, count: 100_001)
    var q = Queue<(Int, Int)>()
    q.enq((N, 0))
    isVisit[N] = true
    while !q.isEmpty {
        let (now, second) = q.deq()
        if now == K {
            print(second)
            return
        }
        for new in [now-1, now+1, now*2] {
            if new >= 0, new <= 100_000, !isVisit[new] {
                q.enq((new, second+1))
                isVisit[new] = true
            }
        }
    }
}
let input = readLine()!.split(separator: " ").map { Int($0)! }
BOJ_1697(input[0], input[1])