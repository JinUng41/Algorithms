func BOJ_4195() {
    let f = Int(readLine()!)!
    var dict = [String: Int]()
    var root = [Int](repeating: 1, count: 2*f), friend = [Int](0..<2*f)
    var index = 0
    for _ in 0..<f {
        let input = readLine()!.split(separator: " ").map { String($0) }
        input.forEach {
            if dict[$0] == nil {
                dict[$0] = index
                index += 1
            }
        }
        union(dict[input[0]]!, dict[input[1]]!)
        result.append("\(root[find(dict[input[0]]!)])\n")
    }
    
    func union(_ a: Int, _ b: Int) {
        let aP = find(a), bP = find(b)
        if aP != bP {
            friend[min(aP, bP)] = max(aP, bP)
            root[max(aP, bP)] += root[min(aP, bP)]
        }
    }
    func find(_ index: Int) -> Int {
        if friend[index] != index { friend[index] = find(friend[index]) }
        return friend[index]
    }
}
var result = ""
for _ in 0..<Int(readLine()!)! { BOJ_4195() }
print(result)