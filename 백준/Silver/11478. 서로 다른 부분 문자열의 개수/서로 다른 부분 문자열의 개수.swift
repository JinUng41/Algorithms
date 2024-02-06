let s = readLine()!.map { $0 }
var a = Set<String>()
for i in 0..<s.count {
    var ss = ""
    for j in i..<s.count {
        ss += String(s[j])
        a.insert(ss)
    }
}
print(a.count)