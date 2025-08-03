func solution(_ seoul:[String]) -> String {
    return "김서방은 \(seoul.firstIndex { $0 == "Kim" }!)에 있다"
}