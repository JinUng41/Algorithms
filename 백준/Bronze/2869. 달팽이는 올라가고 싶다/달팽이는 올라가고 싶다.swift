import Foundation
let abv = readLine()!.split(separator: " ").map { Int($0)! }
let a = abv[0], b = abv[1], v = abv[2]
print(Int(ceil(Double(v-b)/Double(a-b))))