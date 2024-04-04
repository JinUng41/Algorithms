func BOJ_1065(_ N: Int) {
    if N < 100 {
        print(N)
        return
    }
    var count = 99
    for i in 100...N {
        let a = i / 100, b = i / 10 % 10, c = i % 10
        if c-b == b-a { count += 1 }
    }
    print(count)
}
BOJ_1065(Int(readLine()!)!)