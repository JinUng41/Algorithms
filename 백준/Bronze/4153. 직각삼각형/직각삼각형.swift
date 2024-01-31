while true {
    let abc = readLine()!.split(separator: " ").map { Int($0)! }.sorted()
    let (a, b, c) = (abc[0], abc[1], abc[2])
    if (0, 0, 0) == (a, b, c) { break }
    let x = (a*a)+(b*b)
    let y = (c*c)
    print(x==y ? "right" : "wrong")
}