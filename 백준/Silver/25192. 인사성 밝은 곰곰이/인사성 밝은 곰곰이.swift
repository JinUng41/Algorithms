func BOJ_25192() {
    var a = Set<String>()
    var b = 0
    for _ in 0..<Int(readLine()!)! {
        let input = readLine()!
        if input == "ENTER" {
            a.removeAll()
            continue
        }
        if !a.contains(input) {
            a.insert(input)
            b += 1
        }
    }
    print(b)
}
BOJ_25192()