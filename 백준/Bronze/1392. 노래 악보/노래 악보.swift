let nq = readLine()!.split(separator: " ").map { Int($0)! }
let n = nq[0], q = nq[1]
var songs = [Int]()
for i in 1...n {
    let time = Int(readLine()!)!
    for _ in 0..<time {
        songs.append(i)
    }
}
var result = ""
for _ in 0..<q {
    result.append("\(songs[Int(readLine()!)!])\n")
}
print(result)