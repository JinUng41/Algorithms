func BOJ_1463() {
    let x = Int(readLine()!)!
    if x == 1 { print(0); return }
    var a = [Int](repeating: 0, count: x + 1)
    for i in 2...x {
        a[i] = a[i - 1] + 1
        if i % 3 == 0 { a[i] = min(a[i], a[i / 3] + 1) }
        if i % 2 == 0 { a[i] = min(a[i], a[i / 2] + 1) }
    }
    print(a[x])
}
BOJ_1463()