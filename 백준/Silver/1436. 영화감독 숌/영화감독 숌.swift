let n = Int(readLine()!)!
var count = 0
var number = 0
while count != n {
    var temp = number
    while temp >= 666 {
        if temp % 1000 == 666 {
            count += 1
            break
        } else {
            temp /= 10
        }
    }
    number += 1
}
print(number - 1)