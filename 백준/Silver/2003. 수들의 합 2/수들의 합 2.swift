func BOJ_2003() {
    let NM = readLine()!.split(separator: " ").map { Int($0)! }
    let N = NM[0], M = NM[1]
    let A = readLine()!.split(separator: " ").map { Int($0)! }
    var count = 0, sum = 0
    var left = 0
    for right in 0..<N {
        sum += A[right]
        while sum > M {
            sum -= A[left]
            left += 1
        }
        if sum == M { count += 1 }
    }
    print(count)
}
BOJ_2003()