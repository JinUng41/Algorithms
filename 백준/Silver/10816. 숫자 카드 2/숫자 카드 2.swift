func foo() {
    let n = Int(readLine()!)!
    let numbers = readLine()!.split(separator: " ").map { Int($0)! }
    let m = Int(readLine()!)!
    let container = readLine()!.split(separator: " ").map { Int($0)! }
    
    var dict = [Int: Int]()
    container.forEach { dict[$0] = 0 }
    
    numbers.forEach {
        if let value = dict[$0] {
            dict[$0]! += 1
        }
    }
    
    var result = ""
    container.forEach { result.append("\(dict[$0]!) ") }
    print(result)
}
foo()