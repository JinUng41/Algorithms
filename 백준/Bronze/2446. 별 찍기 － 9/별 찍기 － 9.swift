func BOJ_2446(_ n: Int) {
    var result = ""
    for i in 1...n {
        for _ in 1..<i { result += " " }
        for _ in 1...2*n-(2*i-1) { result += "*" }
        result += "\n"
    }
    for i in 1..<n {
        for _ in 1..<n-i { result += " " }
        for _ in 1...2*i+1 { result += "*" }
        result += "\n"
    }
    print(result)
}
BOJ_2446(Int(readLine()!)!)