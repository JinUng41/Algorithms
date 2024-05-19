func BOJ_2083() {
    var result = ""
    while let input = readLine()?.split(separator: " ").map({ String($0) }) {
        if input[0] == "#" {
            print(result)
            break
        }
        result += input[0]
        let temp = (1...2).map { Int(input[$0])! }
        result += temp[0] > 17 || temp[1] >= 80 ? " Senior\n" : " Junior\n"
    }
}
BOJ_2083()