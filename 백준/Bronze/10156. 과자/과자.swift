func BOJ_10156() {
    let KNM = readLine()!.split(separator: " ").map { Int($0)! }
    let result = KNM[0]*KNM[1]-KNM[2]
    print(result > 0 ? result : 0)
}
BOJ_10156()