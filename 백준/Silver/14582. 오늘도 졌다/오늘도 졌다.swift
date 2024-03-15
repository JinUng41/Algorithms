func BOJ_14582() {
    let a = readLine()!.split(separator: " ").map { Int($0)! }
    let b = readLine()!.split(separator: " ").map { Int($0)! }
    var aa = 0, bb = 0
    for i in 0..<9 {
        aa += a[i]
        if aa > bb { print("Yes"); return }
        bb += b[i]
    }
    print("No")
}
BOJ_14582()