func BOJ_9625() {
    let K = Int(readLine()!)!
    var a = [Int](repeating: 0, count: 46), b = [Int](repeating: 0, count: 46)
    a[0] = 1
    a[2] = 1
    b[1] = 1
    b[2] = 1
    if K > 2 {
        for i in 3...K {
            a[i] = a[i - 1] + a[i - 2]
            b[i] = b[i - 1] + b[i - 2]
        }
    }
    print("\(a[K]) \(b[K])")
}
BOJ_9625()