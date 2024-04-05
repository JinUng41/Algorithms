for _ in 0..<Int(readLine()!)! {
    let N = Int(readLine()!)!
    var array = [0, 1, 1, 1, 2]
    if N < 5 {
        print(array[N])
        continue
    }
    for i in 5...N {
        array.append(array[i-5] + array[i-1])
    }
    print(array[N])
}