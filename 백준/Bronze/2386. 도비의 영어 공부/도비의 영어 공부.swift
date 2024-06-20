func BOJ_2386() {
    var result = ""
    while let input = readLine()?.lowercased(), input != "#" {
        let target = input.first!
        let count = input.dropFirst().filter { $0 == target }.count
        result += "\(target) \(count)\n"
    }
    print(result)
}
BOJ_2386()