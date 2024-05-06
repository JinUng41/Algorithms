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
func BOJ_4485(_ N: Int) -> Int {
    let dx = [0, 0, 1, -1], dy = [1, -1, 0, 0]
    var graph = Array(repeating: Array(repeating: Int.max, count: N), count: N)
    var costs = Array(repeating: Array(repeating: Int.max, count: N), count: N)
    var heap = Heap<(vertex: (y: Int, x: Int), weight: Int)>() { $0.weight < $1.weight }
    for i in 0..<N { graph[i] = readLine()!.split(separator: " ").map { Int($0)! } }
    heap.enheap((vertex: (0, 0), weight: graph[0][0]))
    
    while !heap.isEmpty {
        let info = heap.deheap()!, (y, x) = info.vertex
        
        if info.vertex == (N-1, N-1) { break }
        
        if info.weight > costs[y][x] { continue }
        
        for i in 0..<4 {
            let newX = x+dx[i], newY = y+dy[i]
            
            guard newX >= 0, newY >= 0, newX < N, newY < N else { continue }
            
            let newWeight = info.weight + graph[newY][newX]
            if newWeight < costs[newY][newX] {
                costs[newY][newX] = newWeight
                heap.enheap(((newY, newX), newWeight))
            }
        }
    }
    return costs[N-1][N-1]
}
var result = [Int]()
while let input = Int(readLine()!), input != 0 { result.append(BOJ_4485(input)) }
for i in 1...result.count { print("Problem \(i): \(result[i-1])") }