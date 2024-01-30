var array = [Int]()
var sum = 0
for _ in 0..<5 {
    let number = Int(readLine()!)!
    array.append(number)
    sum += number
}
print(sum / 5)
print(array.sorted()[2])