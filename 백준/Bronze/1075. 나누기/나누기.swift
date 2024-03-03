func BOJ_1075() {
    let N = Int(readLine()!)!, F = Int(readLine()!)!
    for i in ((N / 100) * 100)...((N / 100) * 100 + 100) {
        if i % F == 0 {
            let answer = String(i % 100)
            
            if answer.count == 1 {
                print("0\(answer)")
            } else {
                print(answer)
            }
            
            break
        }
    }
}
BOJ_1075()