let n = Int(readLine()!)!
for i in (1...n).reversed() {
    for _ in 1...i {
        print("*", terminator: "")
    }
    print("")
}