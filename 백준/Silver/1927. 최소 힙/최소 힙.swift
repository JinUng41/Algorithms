struct Heap {
    var array = [Int]()
    var isEmpty: Bool {
        array.isEmpty
    }
    mutating func enheap(_ newElement: Int) {
        var childIndex = array.count
        var parentIndex = (childIndex - 1) / 2
        array.append(newElement)
        
        while childIndex > 0 && array[parentIndex] > array[childIndex] {
            array.swapAt(parentIndex, childIndex)
            childIndex = parentIndex
            parentIndex = (childIndex - 1) / 2
        }
    }
    
    mutating func deheap() -> Int {
        if array.isEmpty {
            return 0
        }
        
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
            if leftChildIndex < array.count && array[target] > array[leftChildIndex] {
                target = leftChildIndex
            }
            
            if rightChildIndex < array.count && array[target] > array[rightChildIndex] {
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


var result = ""
var heap = Heap()
for _ in 0..<Int(readLine()!)! {
    let number = Int(readLine()!)!
    if number == 0 {
        result += "\(heap.deheap())\n"
    } else {
        heap.enheap(number)
    }
}
print(result)
