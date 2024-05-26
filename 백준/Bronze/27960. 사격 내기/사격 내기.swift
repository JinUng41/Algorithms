func BOJ_27960(_ A: Int, _ B: Int) {
    print(A^B)
}
let AB = readLine()!.split(separator: " ").map { Int($0)! }
BOJ_27960(AB[0], AB[1])