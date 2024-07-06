struct Deque<T> {
    private var a = [T](), b = [T]()
    var isEmpty: Bool { a.isEmpty && b.isEmpty }
    mutating func pushFirst(_ new: T) { a.append(new) }
    mutating func pushLast(_ new: T) { b.append(new) }
    mutating func popLast() -> T {
        if b.isEmpty {
            b = a.reversed()
            a = []
        }
        return b.removeLast()
    }
    mutating func popFirst() -> T {
        if a.isEmpty {
            a = b.reversed()
            b = []
        }
        return a.removeLast()
    }
}
func BOJ_1835(_ N: Int) {
    var deque = Deque<Int>()
    deque.pushLast(N)
    for i in stride(from: N-1, to: 0, by: -1) {
        deque.pushFirst(i)
        for _ in 0..<i { deque.pushFirst(deque.popLast()) }
    }
    var result = ""
    while !deque.isEmpty { result += "\(deque.popFirst()) " }
    print(result)
}
BOJ_1835(Int(readLine()!)!)