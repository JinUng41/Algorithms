let T = Int(readLine()!)!
for _ in 0..<T {
    let input = Array(readLine()!)
    var count = 0
    
    for char in input {
        count += char == "(" ? 1 : -1
        if count < 0 {
            break
        }
    }
    
    print(count == 0 ? "YES" : "NO")
}