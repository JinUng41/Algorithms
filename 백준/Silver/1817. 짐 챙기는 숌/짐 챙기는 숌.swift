let nm = readLine()!.split(separator: " ").map { Int($0)! }
let n = nm[0], m = nm[1]
if n != 0 {
    let books = readLine()!.split(separator: " ").map { Int($0)! }
    var weight = 0
    var count = 1
    for i in (0..<n).reversed() {
        weight += books[i]
        if weight > m {
            count += 1
            weight = books[i]
        }
    }
    print(count)
} else {
    print(0)
}