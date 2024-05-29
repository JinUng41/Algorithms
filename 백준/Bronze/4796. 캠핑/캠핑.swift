func BOJ_4786(_ L: Int, _ P: Int, _ V: Int) -> Int {
    return V/P*L + min(L, V%P)
}
var count = 1
var result = ""
while let input = readLine(), input != "0 0 0" {
    let LPV = input.split(separator: " ").map { Int($0)! }
    result += "Case \(count): \(BOJ_4786(LPV[0], LPV[1], LPV[2]))\n"
    count += 1
}
print(result)