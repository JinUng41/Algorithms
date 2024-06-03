let NK = readLine()!.split(separator: " ").map { Int($0)! }
BOJ_2501(NK[0], NK[1]-1)
func BOJ_2501(_ N: Int, _ K: Int) {
    var numbers = [Int]()
    for i in 1...N {
        if N % i == 0 {
            numbers.append(i)
        }
    }
    print(numbers.count > K ? numbers[K] : 0)
}