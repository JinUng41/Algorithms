func BOJ_11170(_ N: Int, _ M: Int) -> Int {
    var count = 0
    for i in N...M { count += String(i).filter { $0 == "0" }.count }
    return count
}
var result = ""
for _ in 0..<Int(readLine()!)! {
    let NM = readLine()!.split(separator: " ").map { Int($0)! }
    result += "\(BOJ_11170(NM[0], NM[1]))\n"
}
print(result)