func find(_ index: Int) -> Int {
    if index != cities[index] {
        cities[index] = find(cities[index])
    }
    return cities[index]
}
func union(_ a: Int, _ b: Int) {
    let aP = find(a)
    let bP = find(b)
    cities[bP] = aP
}
let n = Int(readLine()!)!
let m = Int(readLine()!)!
var cities = [Int](0..<n)
for i in 0..<n {
    let route = readLine()!.split(separator: " ").map { Int($0)! }
    for j in 0..<n {
        if route[j] == 1 {
            union(i, j)
        }
    }
}
let plan = readLine()!.split(separator: " ").map { Int($0)! - 1 }
var result = "YES"
let first = find(plan.first!)
for i in 0..<m {
    if first != find(plan[i]) {
        result = "NO"
        break
    }
}
print(result)
