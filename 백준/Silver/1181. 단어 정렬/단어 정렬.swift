var array = [String]()
for _ in 0..<Int(readLine()!)! {
    array.append(readLine()!)
}
var temp = Array(Set(array))
temp.sort { $0.count == $1.count ? $0 < $1 : $0.count < $1.count }
temp.forEach { print($0) }