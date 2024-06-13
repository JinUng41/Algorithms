func BOJ_17614(_ N: Int) {
    var count = 0
    for i in 1...N {
        if "\(i)".contains("3") || "\(i)".contains("6") || "\(i)".contains("9") {
            count += "\(i)".filter({ $0 == "3" || $0 == "6" || $0 == "9"}).count
        }
    }
    print(count)
}
BOJ_17614(Int(readLine()!)!)