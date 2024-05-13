struct Heap<T> {
    private var array = [T]()
    private let compare: (T, T) -> Bool
    
    var isEmpty: Bool { array.isEmpty }
    
    init(by compare: @escaping (T, T) -> Bool) {
        self.compare = compare
    }
    
    mutating func enheap(_ newElement: T) {
        var childIndex = array.count, parentIndex = (childIndex - 1) / 2
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
            let leftChildIndex = index*2+1, rightChildIndex = leftChildIndex+1
            
            var target = index
            if leftChildIndex < array.count, compare(array[leftChildIndex], array[target]) {
                target = leftChildIndex
            }
            
            if rightChildIndex < array.count, compare(array[rightChildIndex], array[target]) {
                target = rightChildIndex
            }
            
            if target == index { break }
            
            array.swapAt(target, index)
            index = target
        }
        return value
    }
}
typealias Edge = (to: Int, weight: Int)
func BOJ_1238(_ N: Int, _ M: Int, _ X: Int) {
    var graph = [[Edge]](repeating: [], count: N+1), reverseGraph = [[Edge]](repeating: [], count: N+1)
    for _ in 0..<M {
        let input = readLine()!.split(separator: " ").map { Int($0)! }
        let start = input[0], end = input[1], time = input[2]
        graph[start].append((end, time))
        reverseGraph[end].append((start, time))
    }
    func dijkstra(_ graph: [[Edge]], _ start: Int) -> [Int] {
        var distances = [Int](repeating: .max, count: N+1)
        var heap = Heap<(node: Int, distance: Int)> { $0.distance < $1.distance }
        distances[start] = 0
        heap.enheap((start, 0))
        while !heap.isEmpty {
            let now = heap.deheap()!
            if now.distance > distances[now.node] { continue }
            
            for edge in graph[now.node] {
                let newDistance = distances[now.node] + edge.weight
                if newDistance < distances[edge.to] {
                    distances[edge.to] = newDistance
                    heap.enheap((edge.to, newDistance))
                }
            }
        }
        return distances
    }
    let toX = dijkstra(graph, X), fromX = dijkstra(reverseGraph, X)
    var maxTime = 0
    for i in 1...N {
        if i != X, toX[i] != Int.max, fromX[i] != Int.max {
            let totalTime = toX[i] + fromX[i]
            if totalTime > maxTime {
                maxTime = totalTime
            }
        }
    }
    print(maxTime)
}
let NMX = readLine()!.split(separator: " ").map { Int($0)! }
BOJ_1238(NMX[0], NMX[1], NMX[2])