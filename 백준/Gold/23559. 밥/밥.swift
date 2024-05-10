func BOJ_23559(_ N: Int, _ X: Int) {
    var options = [(a: Int, b: Int)]()
    for _ in 0..<N {
        let ab = readLine()!.split(separator: " ").map { Int($0)! }
        options.append((ab[0], ab[1]))
    }
    var total = options.map { $0.b }.reduce(0, +), remain = X-1000*N
    options.sort { $0.a-$0.b > $1.a-$1.b }
    for option in options {
        let diff = option.a-option.b
        if diff > 0, remain >= 4000 {
            total += diff
            remain -= 4000
        } else {
            break
        }
    }
    print(total)
}
let NX = readLine()!.split(separator: " ").map { Int($0)! }
BOJ_23559(NX[0], NX[1])