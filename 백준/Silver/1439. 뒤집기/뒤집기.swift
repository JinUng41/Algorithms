func BOJ_1439() {
    let input = Array(readLine()!)
    var count = 0
    for i in 0..<input.count-1 {
        if input[i] != input[i+1] { count += 1 }
    }
    print((count+1)/2)
}
BOJ_1439()