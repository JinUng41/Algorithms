func solution(_ arr:[Int]) -> [Int] {
    let min = arr.min()!
    let temp = arr.filter { $0 != min }
    return temp.isEmpty ? [-1] : temp
}