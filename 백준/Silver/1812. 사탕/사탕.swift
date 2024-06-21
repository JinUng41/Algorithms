func BOJ_1812(_ N: Int) {
    var sums = [Int](), candies = [Int](repeating: 0, count: N)
    for _ in 0..<N { sums.append(Int(readLine()!)!) }
    var first = 0
    for (index, sum) in sums.enumerated() { first += index%2 == 0 ? sum : -sum }
    candies[0] = first/2
    for i in 1..<N { candies[i] = sums[i-1]-candies[i-1] }
    print(candies.map { String($0) }.joined(separator: "\n"))
}
BOJ_1812(Int(readLine()!)!)