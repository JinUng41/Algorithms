let n = Int(readLine()!)!
var dts = [(d: Int, t: Int)]()
for _ in 0..<n {
    let dt = readLine()!.split(separator: " ").map { Int($0)! }
    dts.append((dt[0], dt[1]))
}
dts.sort { $0.t > $1.t }
var t = dts[0].t
for i in 0..<n { t = min(dts[i].t, t) - dts[i].d }
print(t)