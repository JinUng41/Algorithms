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
    
    mutating func deheap() -> T {
        if array.count == 1 { return array.removeLast() }
        
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
            
            if target == index { break }
            
            array.swapAt(target, index)
            index = target
        }
        return value
    }
}
struct Edge { let to: Int, cost: Int }
func BOJ_1916() {
    let N = Int(readLine()!)!, M = Int(readLine()!)!
    var graph = [[Edge]](repeating: [], count: N + 1)
    for _ in 0..<M {
        let input = readLine()!.split(separator: " ").map { Int($0)! }
        let start = input[0], end = input[1], cost = input[2]
        graph[start].append(Edge(to: end, cost: cost))
    }
    
    let startEnd = readLine()!.split(separator: " ").map { Int($0)! }
    let start = startEnd[0], end = startEnd[1]
    
    var distance = [Int](repeating: Int.max, count: N + 1)
    var isVisit = [Bool](repeating: false, count: N + 1)
    distance[start] = 0
    
    var heap = Heap(by: { distance[$0] < distance[$1] })
    heap.enheap(start)
    
    while !heap.isEmpty {
        let current = heap.deheap()
        
        if isVisit[current] { continue }
        isVisit[current] = true
        
        for edge in graph[current] {
            let next = edge.to
            let cost = edge.cost
            
            if !isVisit[next], distance[next] > distance[current] + cost {
                distance[next] = distance[current] + cost
                heap.enheap(next)
            }
        }
    }
    print(distance[end])
}
BOJ_1916()