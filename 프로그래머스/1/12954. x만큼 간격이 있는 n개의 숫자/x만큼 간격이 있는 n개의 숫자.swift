func solution(_ x:Int, _ n:Int) -> [Int64] {
    return (1...n).map { Int64(x) * Int64($0) }
}