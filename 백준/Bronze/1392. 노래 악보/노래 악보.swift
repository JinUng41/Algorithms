let nq = readLine()!.split(separator: " ").map { Int($0)! }
var songs = [Int]()
for i in 1...nq[0] { for _ in 0..<Int(readLine()!)! { songs.append(i) } }
var result = ""
for _ in 0..<nq[1] { result.append("\(songs[Int(readLine()!)!])\n") }
print(result)