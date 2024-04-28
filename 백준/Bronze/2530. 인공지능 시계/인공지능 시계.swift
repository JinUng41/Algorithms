func BOJ_2530() {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let A = input[0], B = input[1], C = input[2], D = Int(readLine()!)!
    let time = A * 3600 + B * 60 + C + D
    let hour = (time / 3600) % 24, minute = (time % 3600) / 60, seconds = time % 60
    print("\(hour) \(minute) \(seconds)")
}
BOJ_2530()