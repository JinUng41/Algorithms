func solution(_ x:Int) -> Bool {
    return x % String(x).map { $0.hexDigitValue! }.reduce(0, +) == 0
}