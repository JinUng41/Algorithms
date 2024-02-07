let nk = readLine()!.split(separator: " ").map { Int($0)! }
var n = nk[0], k = nk[1]
var c = [Int]()
for _ in 0..<n { c.append(Int(readLine()!)!) }
var cnt = 0
for i in c.reversed() {
    if k == 0 {
        break
    }
    
    while k >= i {
        cnt += 1
        k -= i
    }
}
print(cnt)