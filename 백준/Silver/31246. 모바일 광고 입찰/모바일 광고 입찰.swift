func BOJ_31246() {
    let NK = readLine()!.split(separator: " ").map { Int($0)! }
    let N = NK[0]
    var K = NK[1]
    var diff = [Int]()
    for _ in 0..<N {
        let AB = readLine()!.split(separator: " ").map { Int($0)! }
        let n = AB[1] - AB[0]
        if n <= 0 { K -= 1 }
        else { diff.append(n) }
    }
    if K <= 0 { print(0); return }
    for n in diff.sorted() {
        K -= 1
        if K == 0 { print(n); return }
    }
}
BOJ_31246()