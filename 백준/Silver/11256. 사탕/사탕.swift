for _ in 0..<Int(readLine()!)! {
    let jn = readLine()!.split(separator: " ").map { Int($0)! }
    var j = jn[0], n = jn[1]
    var boxes = [Int]()
    for _ in 0..<n {
        let rc = readLine()!.split(separator: " ").map { Int($0)! }
        boxes.append(rc[0] * rc[1])
    }
    var count = 0
    for box in boxes.sorted(by: >) {
        if j <= 0 { break }
        j -= box
        count += 1
    }
    print(count)
}