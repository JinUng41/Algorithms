let input = readLine()!.split(separator: " ").map { Int($0)! }
let N = input[0]
let M = input[1]
var baskets: [Int] = Array(1...N)
for _ in 1...M {
    let things = readLine()!.split(separator: " ").map { Int($0)! }
    let i = things[0] - 1
    let j = things[1] - 1
    var tempArr: [Int] = []
    for index in i...j {
        tempArr.append(baskets[index])
    }
    tempArr.reverse()
    baskets.replaceSubrange(i...j, with: tempArr)
}
baskets.forEach { print($0, terminator: " ") }