func BOJ_25556() {
    let N = Int(readLine()!)!
    let A = readLine()!.split(separator: " ").map { Int($0)! }
    var stacks = [[Int]](repeating: [0], count: 4)
    for i in 0..<N {
        for j in 0..<4 {
            if stacks[j].last! < A[i] { stacks[j].append(A[i]); break }
            else if j == 3, stacks[j].last! > A[i] { print("NO"); return }
        }
    }
    print("YES")
}
BOJ_25556()