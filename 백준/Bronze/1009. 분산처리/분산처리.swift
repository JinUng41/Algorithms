func BOJ_1009(_ T: Int) {
    var result = ""
    for _ in 0..<T {
        let ab = readLine()!.split(separator: " ").map { Int($0)! }, base = ab[0] % 10
        var temp = 1
        for _ in 1...ab[1] {
            if temp == 0 { break }
            temp = (temp * base) % 10
        }
        result.append("\(temp == 0 ? 10 : temp)\n")
    }
    print(result)
}
BOJ_1009(Int(readLine()!)!)