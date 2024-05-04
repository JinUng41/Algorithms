func BOJ_31738(_ N: Int, _ M: Int) {
    if N >= M {
        print(0)
        return
    }
    var result = 1
    for i in 1...N { result = (result * i) % M }
    print(result)
}
let NM = readLine()!.split(separator:  " ").map { Int($0)! }
BOJ_31738(NM[0], NM[1])