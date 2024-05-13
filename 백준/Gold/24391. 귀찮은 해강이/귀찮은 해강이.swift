func find(_ index: Int) -> Int {
    if index != arr[index] {
        arr[index] = find(arr[index])
    }
    return arr[index]
}
func union(_ a: Int, _ b: Int) {
    let aP = find(a)
    let bP = find(b)
    arr[bP] = aP
}
let nm = readLine()!.split(separator: " ").map { Int($0)! }
let (n, m) = (nm[0], nm[1])
var arr = [Int](0..<n)
for _ in 0..<m {
    let ij = readLine()!.split(separator: " ").map { Int($0)! - 1 }
    let (i, j) = (ij[0], ij[1])
    union(i, j)
}
let routes = readLine()!.split(separator: " ").map { Int($0)! - 1 }
var count = 0
for i in 0..<routes.count - 1 {
    let aP = find(routes[i])
    let bP = find(routes[i + 1])
    if aP != bP {
        count += 1
    }
}
print(count)