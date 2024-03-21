import Foundation
let array = ["c=", "c-", "dz=", "d-", "lj", "nj", "s=", "z="]
var input = readLine()!
for divider in array {
    input = input.replacingOccurrences(of: divider, with: "*")
}
print(input.count)