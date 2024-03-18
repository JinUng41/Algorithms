var set = Set<String>()
for _ in 0..<Int(readLine()!)! { set.insert(readLine()!) }
var z = ""
set.sorted { $0.count == $1.count ? $0 < $1 : $0.count < $1.count }.forEach { z += "\($0)\n"}
print(z)