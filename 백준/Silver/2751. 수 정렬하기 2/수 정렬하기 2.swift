var array = [Int]()
var result = ""
for _ in 0..<Int(readLine()!)! { array.append(Int(readLine()!)!) }
array.sorted().forEach { result += "\($0)\n" }
print(result)