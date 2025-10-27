import Foundation

func solution(_ cards1:[String], _ cards2:[String], _ goal:[String]) -> String {
    var cards1Q = Queue(cards1), cards2Q = Queue(cards2), goalQ = Queue(goal)
    while !goalQ.isEmpty {
        let goalPeek = goalQ.peek!
        if !cards1Q.isEmpty, cards1Q.peek! == goalPeek {
            _ = cards1Q.dequeue()
            _ = goalQ.dequeue()
        } else if !cards2Q.isEmpty, cards2Q.peek! == goalPeek {
            _ = cards2Q.dequeue()
            _ = goalQ.dequeue()
        } else {
            break
        }
    }
    return goalQ.isEmpty ? "Yes" : "No"
}

struct Queue<Element> {
    private var inbox: [Element] = [], outbox: [Element] = []
    
    init(_ inbox: [Element]) {
        self.inbox = inbox
    }
    
    var isEmpty: Bool { inbox.isEmpty && outbox.isEmpty }
    var count: Int { inbox.count + outbox.count }
    var peek: Element? {
        if let front = outbox.last {
            return front
        }
        return inbox.first
    }
    
    mutating func enqueue(_ element: Element) {
        inbox.append(element)
    }
    
    mutating func dequeue() -> Element? {
        if outbox.isEmpty {
            outbox = inbox.reversed()
            inbox.removeAll()
        }
        return outbox.popLast()
    }
}
