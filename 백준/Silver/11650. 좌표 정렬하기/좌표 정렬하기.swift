var array = [(x: Int, y: Int)]()
for _ in 0..<Int(readLine()!)! {
    let xy = readLine()!.split(separator: " ").map { Int($0)! }
    array.append((xy[0], xy[1]))
}
array.sorted {
    return $0.x == $1.x ? $0.y < $1.y : $0.x < $1.x
}.forEach { print("\($0.x) \($0.y)") }