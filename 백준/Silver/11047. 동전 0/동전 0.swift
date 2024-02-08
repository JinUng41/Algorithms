let nk = readLine()!.split(separator: " ").map { Int($0)! }
var n = nk[0], k = nk[1]
var coins = [Int]()
for _ in 0..<n { coins.append(Int(readLine()!)!) }
var count = 0
for coin in coins.reversed() {
    count += k / coin
    k = k % coin
}
print(count)