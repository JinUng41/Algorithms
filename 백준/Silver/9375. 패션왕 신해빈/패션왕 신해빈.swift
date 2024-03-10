func BOJ_9375() {
    var z = ""
    for _ in 0..<Int(readLine()!)! {
        let N = Int(readLine()!)!
        var clothes = [String: [String]]()
        
        for _ in 0..<N {
            let input = readLine()!.split(separator: " ").map { String($0) }
            let name = input[0], type = input[1]
            
            if clothes[type] == nil { clothes[type] = [name] }
            else { clothes[type]!.append(name) }
        }
        
        var count = 1
        for (_, names) in clothes { count *= names.count + 1 }
        z.append("\(count - 1)\n")
    }
    print(z)
}
BOJ_9375()