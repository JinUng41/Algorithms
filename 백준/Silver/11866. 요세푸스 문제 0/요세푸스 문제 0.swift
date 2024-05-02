var result = [Int]()
var index = 0
let NK = readLine()!.split(separator: " ").map { Int($0)! }
var array = Array(1...NK[0])
while !array.isEmpty {
    index = (index + NK[1] - 1) % array.count
    result.append(array.remove(at: index))
}
print("<" + result.map({ "\($0)" }).joined(separator: ", ") + ">")