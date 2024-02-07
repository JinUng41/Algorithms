let nk = readLine()!.split(separator: " ").map { Int($0)! }
var n = nk[0], k = nk[1]
var coins = [Int]()
for _ in 0..<n { coins.append(Int(readLine()!)!) }
var count = 0
while k != 0 {
    let last = coins.removeLast()
    count += k / last
    k = k % last
}
print(count)