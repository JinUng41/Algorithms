func BOJ_11653(_ N: Int) {
    var result = ""
    var temp = N
    var divider = 2
    
    while temp > 1 {
        while temp % divider == 0 {
            result += "\(divider)\n"
            temp /= divider
        }
        divider += 1
        
        if divider * divider > temp {
            if temp > 1 {
                result += "\(temp)\n"
                break
            }
        }
    }
    print(result)
}
BOJ_11653(Int(readLine()!)!)