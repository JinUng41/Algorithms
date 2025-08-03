func solution(_ num:Int) -> Int {
    var n = num
    var count = 0
    while n != 1 {
        count += 1
        
        if count > 500 {
            return -1
        }
        
        if n % 2 == 0 {
            n /= 2
            continue
        }
        
        if n % 2 == 1 {
            n = n * 3 + 1
            continue
        }
    }
    return count
}