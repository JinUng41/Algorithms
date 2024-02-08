let n = Int(readLine()!)!
var result = ""
for i in 1...n {
    let a = String(repeating: "*", count: i)
    let b = String(repeating: " ", count: n*2-i*2)
    result.append("\(a+b+a)\n")
}
if  n > 1 {
    for i in (1...(n-1)).reversed() {
        let a = String(repeating: "*", count: i)
        let b = String(repeating: " ", count: n*2-i*2)
        result.append("\(a+b+a)\n")
    }
}
print(result)