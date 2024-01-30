var input = [String]()
while true{
    let n = readLine()!
    if n == "0" { break }
    input.append(n)
}
var reversedInput = input.map { String($0.reversed()) }

for i in 0..<input.count {
    print(input[i] == reversedInput[i] ? "yes" : "no")
}