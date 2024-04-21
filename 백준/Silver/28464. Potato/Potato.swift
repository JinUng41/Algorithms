func BOJ_28464(_ N: Int) {
    let input = readLine()!.split(separator: " ").map { Int($0)! }.sorted()
    var sungwoo = 0, park = 0
    for i in 0..<N/2 { sungwoo += input[i] }
    for i in N/2..<N { park += input[i] }
    print("\(sungwoo) \(park)")
}
BOJ_28464(Int(readLine()!)!)