func BOJ_16953(_ A: Int, _ B: Int) {
    var count = 0, b = B
    
    while A < b {
        if b % 2 == 0 {
            b /= 2
        } else if b % 10 == 1 {
            b /= 10
        } else {
            break
        }
        count += 1
    }
    
    print(b == A ? count+1 : -1)
}
let AB = readLine()!.split(separator: " ").map { Int($0)! }
BOJ_16953(AB[0], AB[1])