func BOJ_2851() {
    var mushrooms = [Int](), temp = [(Int, Int)](repeating: (0, 0), count: 10)
    for _ in 0..<10 { mushrooms.append(Int(readLine()!)!) }
    temp[0] = (mushrooms[0], 100-mushrooms[0])
    for i in 1..<10 {
        temp[i].0 = mushrooms[i] + temp[i-1].0
        temp[i].1 = abs(100-temp[i].0)
    }
    let min = temp.min {
        if $0.1 == $1.1 { return $0.0 > $1.0 }
        else { return $0.1 < $1.1 }
    }
    print(min!.0)
}
BOJ_2851()