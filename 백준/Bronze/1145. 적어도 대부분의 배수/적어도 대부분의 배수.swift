func BOJ_1145() {
    let numbers = readLine()!.split(separator: " ").map { Int($0)! }
    var min = 1
    while true {
        var count = 0
        for number in numbers {
            if min % number == 0 { count += 1 }
        }
        if count >= 3 {
            print(min)
            return
        }
        min += 1
    }
}
BOJ_1145()