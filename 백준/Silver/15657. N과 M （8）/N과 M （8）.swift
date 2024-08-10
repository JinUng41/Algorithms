func solution(_ N: Int, _ M: Int) {
    let input = readLine()!.split(separator: " ").map { Int($0)! }.sorted()
    var arr = [String]()
    var result = ""
    func foo(_ depth: Int) {
        if arr.count == M {
            result += "\(arr.joined(separator: " "))\n"
            return
        }
        for i in depth..<N {
            arr.append("\(input[i])")
            foo(i)
            arr.removeLast()
        }
    }
    foo(0)
    print(result)
}
let NM = readLine()!.split(separator: " ").map { Int($0)! }
solution(NM[0], NM[1])