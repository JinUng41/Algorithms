let input = readLine()!.uppercased()
var dict: [Character: Int] = [:]
input.forEach {
    if let value = dict[$0] {
        dict[$0] = value + 1
    } else {
        dict[$0] = 1
    }
}
dict = dict.filter({ (key, value) in
    value == dict.values.max()
})
print(dict.count > 1 ? "?" : dict.keys.first!)