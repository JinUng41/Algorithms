let N = Int(readLine()!)!
for i in 1...N {
    let spaces = String(repeating: " ", count: N-i)
    let star = String(repeating: "*", count: 2*i-1)
    print(spaces+star)
}
for i in 1..<N {
    let spaces = String(repeating: " ", count: i)
    let star = String(repeating: "*", count: 2*(N-i)-1)
    print(spaces+star)
}