for _ in 0..<Int(readLine()!)! {
    let k = Int(readLine()!)!, n = Int(readLine()!)!
    var a = Array(repeating: Array(repeating: 0, count: n+1), count: k+1)
    for i in 1...n { a[0][i] = i }
    for i in 1...k {
        for j in 1...n {
            a[i][j] = a[i][j-1] + a[i-1][j]
        }
    }
    print(a[k][n])
}