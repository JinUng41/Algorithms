func BOJ_1476(_ E: Int, _ S: Int, _ M: Int) {
    var year = 1
    while true {
        if (year-E)%15 == 0, (year-S)%28 == 0, (year-M)%19 == 0 { break }
        year += 1
    }
    print(year)
}
let input = readLine()!.split(separator: " ").map { Int($0)! }
BOJ_1476(input[0], input[1], input[2])