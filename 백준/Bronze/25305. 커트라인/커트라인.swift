let input = readLine()!.split(separator: " ").map { Int($0)! }
let (n, k) = (input[0], input[1])
print(readLine()!.split(separator: " ").map { Int($0)! }.sorted(by: { $0 > $1 })[k-1])