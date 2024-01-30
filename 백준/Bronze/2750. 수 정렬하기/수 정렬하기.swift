var array = [Int]()
for _ in 0..<Int(readLine()!)! {
    array.append(Int(readLine()!)!)
}
array.sort()
array.forEach { print($0) }