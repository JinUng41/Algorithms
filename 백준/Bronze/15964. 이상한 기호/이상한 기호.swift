func BOJ_15964() {
    let AB = readLine()!.split(separator: " ").map { Int($0)! }
    let A = AB[0], B = AB[1]
    print((A + B)*(A - B))
}
BOJ_15964()