func solution() -> Bool {
    let word = readLine()!
    var stack: [Character] = []
    word.forEach {
        if !stack.isEmpty && stack.last! == $0 {
            stack.removeLast()
        }
        stack.append($0)
    }
    return Set(stack).count == stack.count
}
let n = Int(readLine()!)!
var count = 0
for _ in 0..<n {
    if solution() {
        count += 1
    }
}
print(count)