let nk = readLine()!.split(separator: " ").map { Int($0)! }
let n = nk[0], k = nk[1]
var a = Array(1...n), b = [Int]() 
var i = 0
while !a.isEmpty {
    i = (i + k - 1) % a.count
    b.append(a.remove(at: i))
}
let z = "<" + b.map { "\($0)" }.joined(separator: ", ") + ">"
print(z)