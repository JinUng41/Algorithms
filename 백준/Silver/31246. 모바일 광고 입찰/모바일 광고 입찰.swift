func BOJ_31246() {
    let NK = readLine()!.split(separator: " ").map { Int($0)! }
    let N = NK[0], K = NK[1]
    var count = K
    var diff = [Int]()
    for _ in 0..<N {
        let AB = readLine()!.split(separator: " ").map { Int($0)! }
        let A = AB[0], B = AB[1]
        let n = B-A
        if n <= 0 { count -= 1 }
        else { diff.append(B-A) }
    }
    if count <= 0 { print(0); return }
    
    for n in diff.sorted() {
        count -= 1
        if count == 0 { print(n); return }
    }
}
BOJ_31246()