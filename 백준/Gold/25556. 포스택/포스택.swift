func BOJ_25556() {
    let N = Int(readLine()!)!
    let A = readLine()!.split(separator: " ").map { Int($0)! }
    var a = [Int](), b = [Int](), c = [Int](), d = [Int]()
    
    for i in 0..<N {
        let temp = A[i]
        if a.isEmpty || a.last! < temp { a.append(temp) }
        else if b.isEmpty || b.last! < temp { b.append(temp) }
        else if c.isEmpty || c.last! < temp { c.append(temp) }
        else if d.isEmpty || d.last! < temp { d.append(temp) }
        else { print("NO"); return }
    }
    print("YES")
}
BOJ_25556()