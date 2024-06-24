func BOJ_14659(_ N: Int) {
    let temp = readLine()!.split(separator: " ").map { Int($0)! }
    var height = temp[0], count = 0, maxCount = 0
    for i in 1..<N {
        if temp[i] < height {
            count += 1
        } else {
            height = temp[i]
            maxCount = max(maxCount, count)
            count = 0
        }
    }
    maxCount = max(maxCount, count)
    print(maxCount)
}
BOJ_14659(Int(readLine()!)!)