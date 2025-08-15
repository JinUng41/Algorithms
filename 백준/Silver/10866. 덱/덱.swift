import Foundation

struct Deck<T> {
    private var a = [T](), b = [T]()
    
    var isEmpty: Bool { return a.isEmpty && b.isEmpty }
    
    var size: Int { return a.count + b.count }
    
    var front: T? { return a.last ?? b.first }
    
    var back: T? { return b.last ?? a.first }
    
    mutating func push_front(_ value: T) {
        a.append(value)
    }
    
    mutating func push_back(_ value: T) {
        b.append(value)
    }
    
    mutating func pop_front() -> T? {
        if a.isEmpty {
            a = b.reversed()
            b.removeAll()
        }
        return a.popLast()
    }
    
    mutating func pop_back() -> T? {
        if b.isEmpty {
            b = a.reversed()
            a.removeAll()
        }
        return b.popLast()
    }
}

var deck = Deck<Int>()
var result = ""
for _ in 0..<Int(readLine()!)! {
    let input = readLine()!.split(separator: " ").map { String($0) }
    
    switch input[0] {
    case "push_front":
        deck.push_front(Int(input[1])!)
    case "push_back":
        deck.push_back(Int(input[1])!)
    case "pop_front":
        result += "\(deck.pop_front() ?? -1)\n"
    case "pop_back":
        result += "\(deck.pop_back() ?? -1)\n"
    case "size":
        result += "\(deck.size)\n"
    case "empty":
        result += "\(deck.isEmpty ? 1 : 0)\n"
    case "front":
        result += "\(deck.front ?? -1)\n"
    case "back":
        result += "\(deck.back ?? -1)\n"
    default:
        break
    }
}
print(result)