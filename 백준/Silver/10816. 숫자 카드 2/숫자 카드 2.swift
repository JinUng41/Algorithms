func BOJ_10816() {
    _ = readLine()
    let numbers = readLine()!.split(separator: " ").map { Int($0)! }
    _ = readLine()
    let container = readLine()!.split(separator: " ").map { Int($0)! }
    
    var dict = [Int: Int]()
    container.forEach { dict[$0] = 0 }
    
    numbers.forEach { if dict[$0] != nil { dict[$0]! += 1 } }
    
    var result = ""
    container.forEach { result.append("\(dict[$0]!) ") }
    print(result)
}
BOJ_10816()