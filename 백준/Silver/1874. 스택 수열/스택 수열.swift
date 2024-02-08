var array = [Int]()
var result = ""
var now = 0
let N = Int(readLine()!)!
for _ in 0..<N {
    let input = Int(readLine()!)!
    if result == "NO" {
        continue
    }
    if now <= input {
        for i in now+1...input {
            array.append(i)
            result += "+\n"
        }
        now = array.removeLast()
        result += "-\n"
    } else {
        if array.last! == input {
            array.removeLast()
            result += "-\n"
        } else {
            result = "NO"
        }
    }
}
print(result)