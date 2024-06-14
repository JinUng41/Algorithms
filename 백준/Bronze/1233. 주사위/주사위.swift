func BOJ_1233() {
    var array = [Int](repeating: 0, count: 81)
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let s1 = input[0], s2 = input[1], s3 = input[2]
    
    for i in 1...s1 {
        for j in 1...s2 {
            for k in 1...s3 {
                array[i+j+k] += 1
            }
        }
    }
    var temp = 0, max = 0
    for i in 1...(s1+s2+s3) {
        if temp < array[i] {
            temp = array[i]
            max = i
        }
    }
    print(max)
}
BOJ_1233()