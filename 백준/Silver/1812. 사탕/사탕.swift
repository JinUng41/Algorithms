func BOJ_1812(_ N: Int) {
    var sums = [Int](), candies = [Int]()
    for _ in 0..<N { sums.append(Int(readLine()!)!) }
    var first = 0
    for (index, sum) in sums.enumerated() {
        if index % 2 == 0 {
            first += sum
        } else {
            first -= sum
        }
    }
    candies.append(first/2)
    for i in 0..<N-1 { candies.append(sums[i]-candies[i]) }
    for candy in candies { print(candy) }
}
BOJ_1812(Int(readLine()!)!)