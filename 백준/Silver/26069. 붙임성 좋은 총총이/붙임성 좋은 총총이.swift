func BOJ_26069() {
    var dancer = Set<String>()
    dancer.insert("ChongChong")
    for _ in 0..<Int(readLine()!)! {
        let ab = readLine()!.split(separator: " ").map { String($0) }
        let a = ab[0], b = ab[1]
        if dancer.contains(a) { dancer.insert(b); continue }
        if dancer.contains(b) { dancer.insert(a) }
    }
    print(dancer.count)
}
BOJ_26069()