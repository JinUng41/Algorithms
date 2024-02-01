func foo() {
    let n = Int(readLine()!)!
    let numbers = readLine()!.split(separator: " ").map { Int($0)! }
    let m = Int(readLine()!)!
    let container = readLine()!.split(separator: " ").map { Int($0)! }
    
    var dict = [Int: Int]()
    container.forEach { dict[$0] = 0 }
    
    let sort = container.sorted()
    var result = ""
    for i in 0..<n {
        var left = 0
        var right = m-1
        let number = numbers[i]
        
        while left<=right {
            let mid = (left + right) / 2
            
            if number == sort[mid] {
                dict[number]! += 1
                break
            }
            
            if number < sort[mid] {
                right = mid - 1
            } else {
                left = mid + 1
            }
        }
    }
    container.forEach { result.append("\(dict[$0]!) ") }
    print(result)
}
foo()