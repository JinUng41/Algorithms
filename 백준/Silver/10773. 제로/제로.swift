var array = [Int]()
let K = Int(readLine()!)!
for _ in 1...K {
    let input = Int(readLine()!)!
    switch input {
    case 0:
        array.removeLast()
    default:
        array.append(input)
    }
}
print(array.reduce(0, +))