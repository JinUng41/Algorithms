struct Deque<T> {
    private var a = [T]()
    private var b = [T]()
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
func BOJ_18115() {
    _ = readLine()
    let sequences = readLine()!.split(separator: " ").map { Int($0)! }.reversed()
    
    var d = Deque<Int>()
    for (index, sequence) in sequences.enumerated() {
        let idx = index + 1
        switch sequence {
        case 2:
            let temp = d.popLast()
            d.pushLast(idx)
            d.pushLast(temp)
        case 3: d.pushFirst(idx)
        default: d.pushLast(idx)
        }
    }
    
    var z = ""
    while !d.isEmpty { z += "\(d.popLast()) " }
    print(z)
}
BOJ_18115()