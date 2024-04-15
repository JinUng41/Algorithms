func BOJ_17466(_ N: Int, _ P: Int) {
    var result = 1
    for i in 1...N { result = (result * i) % P }
    print(result)
}
let NP = readLine()!.split(separator: " ").map { Int($0)! }
BOJ_17466(NP[0], NP[1])