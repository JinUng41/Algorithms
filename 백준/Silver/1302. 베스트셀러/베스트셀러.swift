func BOJ_1302() {
    let N = Int(readLine()!)!
    var dict = [String: Int]()
    for _ in 0..<N {
        let input = readLine()!
        if dict[input] == nil { dict[input] = 1 }
        else { dict[input]! += 1 }
    }
    let max = dict.max {
        if $0.value == $1.value { return $0.key > $1.key }
        else { return $0.value < $1.value }
    }!
    print(max.key)
}
BOJ_1302()