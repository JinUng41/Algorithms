func BOJ_27919(_ V: [String]) {
    var udpc = [String: Int]()
    udpc["U"] = 0
    udpc["D"] = 0
    udpc["P"] = 0
    udpc["C"] = 0
    V.forEach { udpc[$0]! += 1 }
    
    let minU = 0, maxU = udpc["U"]! + udpc["C"]!
    let maxDP = udpc["D"]! + udpc["P"]!
    let minDP = maxDP.isMultiple(of: 2) ? maxDP / 2 : maxDP / 2 + 1
    
    var result = ""
    if maxU > minDP { result += "U" }
    if maxDP > minU { result += "DP" }
    print(result)
}
BOJ_27919(readLine()!.map { String($0) })