let input = readLine()!.split(separator: " ").map { Int($0)! }
let N = input[0]
let M = input[1]
var baskets: [Int] = Array(1...N)
for _ in 1...M {
    let things = readLine()!.split(separator: " ").map { Int($0)! }
    let i = things[0]
    let j = things[1]

    baskets.swapAt(i-1, j-1)
}
baskets.forEach { print($0, terminator: " ") }