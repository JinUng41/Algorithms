func BOJ_14720(_ N: Int) {
    let milks = readLine()!.split(separator: " ").map { Int($0)! }
    var next = 0, count = 0
    for milk in milks {
        if milk == next {
            count += 1
            next = (next+1)%3
        }
    }
    print(count)
}
BOJ_14720(Int(readLine()!)!)