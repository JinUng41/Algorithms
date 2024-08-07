func BOJ_15651(_ N: Int, _ M: Int) {
    var arr = [String]()
    var result = ""
    func foo(_ depth: Int) {
        if depth == M {
            result += "\(arr.joined(separator: " "))\n"
            return
        }
        for i in 1...N {
            arr.append("\(i)")
            foo(depth+1)
            arr.removeLast()
        }
    }
    foo(0)
    print(result)
}
let NM = readLine()!.split(separator: " ").map { Int($0)! }
BOJ_15651(NM[0], NM[1])