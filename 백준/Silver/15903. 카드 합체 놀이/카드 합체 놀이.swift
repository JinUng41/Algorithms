struct Heap<T> {
    private var array = [T]()
    private let compare: (T, T) -> Bool
    var isEmpty: Bool { array.isEmpty }
    
    init(by compare: @escaping (T, T) -> Bool) { self.compare = compare }
    
    mutating func enheap(_ newElement: T) {
        var childIndex = array.count
        var parentIndex = (childIndex - 1) / 2
        array.append(newElement)
        
        while childIndex > 0 && compare(array[childIndex], array[parentIndex]) {
            array.swapAt(childIndex, parentIndex)
            childIndex = parentIndex
            parentIndex = (childIndex - 1) / 2
        }
    }
    
    mutating func deheap() -> T? {
        if isEmpty { return nil }
        if array.count == 1 { return array.removeLast() }
        
        let value = array[0]
        array[0] = array.removeLast()
        
        var index = 0
        while true {
            let leftChildIndex = index * 2 + 1
            let rightChildIndex = leftChildIndex + 1
            
            var target = index
            if leftChildIndex < array.count && compare(array[leftChildIndex], array[target]) { target = leftChildIndex }
            
            if rightChildIndex < array.count && compare(array[rightChildIndex], array[target]) { target = rightChildIndex }
            
            if target == index { break }
            
            array.swapAt(target, index)
            index = target
        }
        return value
    }
}
let nm = readLine()!.split(separator: " ").map { Int($0)! }
let n = nm[0], m = nm[1]
let cards = readLine()!.split(separator: " ").map { Int($0)! }
var heap = Heap<Int>(by: <)
for i in 0..<n { heap.enheap(cards[i]) }
for _ in 0..<m {
    let a = heap.deheap()!, b = heap.deheap()!
    heap.enheap(a+b)
    heap.enheap(a+b)
}
var z = 0
for _ in 0..<n { z += heap.deheap()! }
print(z)