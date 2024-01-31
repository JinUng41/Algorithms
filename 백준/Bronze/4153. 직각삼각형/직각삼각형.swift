while true {
    let abc = readLine()!.split(separator: " ").map { Int($0)! }.sorted()
    let (a, b, c) = (abc[0], abc[1], abc[2])
    if (0, 0, 0) == (a, b, c) { break }
    print((a*a)+(b*b)==(c*c) ? "right" : "wrong")
}