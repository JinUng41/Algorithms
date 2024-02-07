struct Heap<T> {
    private var array = [T]()
    private let compare: (T, T) -> Bool
    
    var isEmpty: Bool { array.isEmpty }
    
    init(by compare: @escaping (T, T) -> Bool) {
        self.compare = compare
    }
    
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
        if array.count == 1 {
            return array.removeLast()
        }
        
        let value = array[0]
        array[0] = array.removeLast()
        
        var index = 0
        while true {
            let leftChildIndex = index * 2 + 1
            let rightChildIndex = leftChildIndex + 1
            
            var target = index
            if leftChildIndex < array.count && compare(array[leftChildIndex], array[target]) {
                target = leftChildIndex
            }
            
            if rightChildIndex < array.count && compare(array[rightChildIndex], array[target]) {
                target = rightChildIndex
            }
            
            if target == index {
                break
            }
            
            array.swapAt(target, index)
            index = target
        }
        
        return value
    }
}

let ve = readLine()!.split(separator: " ").map { Int(String($0))! }
let (v, e) = (ve[0], ve[1])
let k = Int(readLine()!)! - 1

var weights = [Int](repeating: 300_001, count: v)
var edges = [[(vertex: Int, weight: Int)]](repeating: [], count: v)
var heap = Heap<(vertex: Int, weight: Int)> { $0.weight < $1.weight }
weights[k] = 0
heap.enheap((vertex: k, weight: 0))

for _ in 0..<e {
    let uvw = readLine()!.split(separator: " ").map { Int(String($0))! - 1 }
    let (u, v, w) = (uvw[0], uvw[1], uvw[2])
    edges[u].append((vertex: v, weight: w + 1))
}

while !heap.isEmpty {
    let info = heap.deheap()!
    if info.weight > weights[info.vertex] {
        continue
    }
    
    for edge in edges[info.vertex] {
        let newWeight = info.weight + edge.weight
        
        if newWeight < weights[edge.vertex] {
            weights[edge.vertex] = newWeight
            heap.enheap((vertex: edge.vertex, weight: newWeight))
        }
    }
}

var result = ""
weights.forEach { result += "\($0 == 300_001 ? "INF" : String($0))\n" }
print(result)
