func BOJ_11652() {
    let N = Int(readLine()!)!
    var numbers = [Int: Int]()
    for _ in 0..<N {
        let input = Int(readLine()!)!
        if numbers[input] == nil { numbers[input] = 1 }
        else { numbers[input]! += 1 }
    }
    let max = numbers.max {
        if $0.value == $1.value { return $0.key > $1.key }
        else { return $0.value < $1.value }
    }
    print(max!.key)
}
BOJ_11652()