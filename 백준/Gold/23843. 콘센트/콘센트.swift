struct Heap<T> {
    private var array = [T]()
    private let compare: (T, T) -> Bool
    var count: Int { array.count }
    var isEmpty: Bool { array.isEmpty }
    var peek: T? { array.first }
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
let devices = readLine()!.split(separator: " ").map { Int($0)! }.sorted(by: >)
if m < n {
    var charging = Heap<Int>(by: <)
    for i in 0..<m { charging.enheap(devices[i]) }
    for i in m..<n {
        let minCharging = charging.deheap()!
        charging.enheap(minCharging + devices[i])
    }
    while charging.count != 1 { let _ = charging.deheap() }
    print(charging.peek!)
} else {
    print(devices[0])
}