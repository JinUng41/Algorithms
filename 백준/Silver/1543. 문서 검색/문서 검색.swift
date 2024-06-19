func BOJ_1543() {
    let input = readLine()!.map { $0 }, target = readLine()!
    var answer = 0, i = 0
    while i <= input.count-target.count {
        if String(input[i..<i+target.count]) == target {
            answer += 1
            i += target.count
            continue
        }
        i += 1
    }
    print(answer)
}
BOJ_1543()