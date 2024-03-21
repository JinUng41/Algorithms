let n = Int(readLine()!)!
var nSet = Set(readLine()!.split(separator: " ").map { Int($0)! })
_ = readLine()
var result = ""
readLine()!.split(separator: " ").map { Int($0)! }.forEach {
    result.append(nSet.contains($0) ? "1\n" : "0\n")
}
print(result)