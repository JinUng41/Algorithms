func BOJ_2303(_ N: Int) {
    var input = [[Int]]()
    for _ in 0..<N { input.append(readLine()!.split(separator: " ").map { Int($0)! }) }
    var result = [(Int, Int)]()
    for index in 0..<N {
        let line = input[index]
        var temp = 0
        for i in 0..<5 {
            for j in i+1..<5 {
                for k in j+1..<5 {
                    let number = (line[i]+line[j]+line[k])%10
                    temp = max(temp, number)
                }
            }
        }
        result.append((index+1, temp))
    }
    
    let maxPerson = result.max {
        if $0.1 == $1.1 {
            return $0.0 < $1.0
        } else {
            return $0.1 < $1.1
        }
    }
    print(maxPerson!.0)
}
BOJ_2303(Int(readLine()!)!)