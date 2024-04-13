func BOJ_1049(_ N: Int, _ M: Int) {
    var packages = [Int](), bunches = [Int]()
    for _ in 0..<M {
        let input = readLine()!.split(separator: " ").map { Int($0)! }
        packages.append(input[0])
        bunches.append(input[1])
    }
    let package = packages.min()!, bunch = bunches.min()!
    print(min(min((N / 6 + 1) * package, N / 6 * package + N % 6 * bunch), N * bunch))
}
let NM = readLine()!.split(separator: " ").map { Int($0)! }
BOJ_1049(NM[0], NM[1])