func BOJ_5585(_ N: Int) {
    var change = 1000-N, count = 0
    let coins = [500, 100, 50, 10, 5, 1]
    for coin in coins {
        let temp = change/coin
        count += temp
        change -= temp*coin
    }
    print(count)
}
BOJ_5585(Int(readLine()!)!)