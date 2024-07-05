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
func BOJ_13417(_ N: Int) {
    let input = readLine()!.split(separator: " ").map { String($0) }
    var deque = Deque<String>()
    deque.pushLast(input[0])
    var now = input[0]
    for i in 1..<input.count {
        if now >= input[i] {
            deque.pushFirst(input[i])
            now = input[i]
        } else {
            deque.pushLast(input[i])
        }
    }
    var result = ""
    while !deque.isEmpty { result += "\(deque.popFirst())" }
    print(result)
}
for _ in 0..<Int(readLine()!)! { BOJ_13417(Int(readLine()!)!) }