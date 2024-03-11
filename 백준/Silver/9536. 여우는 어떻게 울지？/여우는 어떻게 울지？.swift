func BOJ_9536() {
    for _ in 0..<Int(readLine()!)! {
        var a = readLine()!.split(separator: " ").map { String($0) }
        var b = Set<String>()
        while let c = readLine(), c != "what does the fox say?" { b.insert(c.split(separator: " ").map { String($0) }.last!) }
        for bb in b { a.removeAll { $0 == bb } }
        print(a.joined(separator: " "))
    }
}
BOJ_9536()