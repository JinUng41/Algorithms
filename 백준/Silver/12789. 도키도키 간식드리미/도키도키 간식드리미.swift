let N = Int(readLine()!)!
var input = readLine()!.split(separator: " ").map { Int($0)! }
var stack = [Int]()
var count = 1
while !input.isEmpty {
    let element = input.removeFirst()
    if element == count {
        count += 1
        while !stack.isEmpty && stack.last! == count {
            count += 1
            let _ = stack.removeLast()
        }
    } else {
        stack.append(element)
    }
}
print(stack.isEmpty ? "Nice" : "Sad")