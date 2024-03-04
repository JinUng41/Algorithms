func BOJ_1244() {
    func toggle(_ plug: Int) { status[plug] = status[plug] == 1 ? 0 : 1 }
    
    let plugNumber = Int(readLine()!)!
    var status = [-1] + readLine()!.split(separator: " ").map { Int($0)! }
    let studentNumber = Int(readLine()!)!
    
    for _ in 0..<studentNumber {
        let input = readLine()!.split(separator: " ").map { Int($0)! }
        let gender = input[0], plug = input[1]
        
        if gender == 1 {
            for i in stride(from: plug, through: plugNumber, by: plug) { toggle(i) }
        } else {
            toggle(plug)
            for i in 0..<(plugNumber / 2) {
                let a = plug + i, b = plug - i
                
                if a > plugNumber || b < 1 { break }
                
                if status[a] == status[b] {
                    toggle(a)
                    toggle(b)
                } else {
                    break
                }
            }
        }
    }
    
    for i in 1...plugNumber {
        print("\(status[i])", terminator: " ")
        if i % 20 == 0 { print() }
    }
}
BOJ_1244()