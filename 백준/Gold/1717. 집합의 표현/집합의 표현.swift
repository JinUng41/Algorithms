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
var arr = [Int](0...n)
for _ in 0..<m {
    let numbers = readLine()!.split(separator: " ").map { Int($0)! }
    let (id, a, b) = (numbers[0], numbers[1], numbers[2])
    if id == 1 {
        let aP = find(a)
        let bP = find(b)
        print(aP == bP ? "YES" : "NO")
    } else {
        union(a, b)
    }
}