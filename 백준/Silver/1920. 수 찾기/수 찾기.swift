let n = Int(readLine()!)!
var nSet = Set<Int>()
readLine()!.split(separator: " ").map { Int($0)! }.forEach { nSet.insert($0) }
let m = Int(readLine()!)!
readLine()!.split(separator: " ").map { Int($0)! }.forEach { print(nSet.contains($0) ? 1 : 0) }