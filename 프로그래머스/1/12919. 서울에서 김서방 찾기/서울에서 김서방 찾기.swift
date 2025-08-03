func solution(_ seoul:[String]) -> String {
    let index = seoul.firstIndex { $0 == "Kim" }
    return "김서방은 \(index!)에 있다"
}