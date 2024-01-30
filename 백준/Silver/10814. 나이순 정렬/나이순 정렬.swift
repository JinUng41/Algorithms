var array = [(age: Int, name: String)]()
for _ in 0..<Int(readLine()!)! {
    let input = readLine()!.split(separator: " ")
    array.append((Int(input[0])!, String(input[1])))
}
array.sort { $0.age < $1.age }
array.forEach { print("\($0.age) \($0.name)") }