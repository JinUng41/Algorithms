func solution(_ s:String) -> String {
    let index = s.index(s.startIndex, offsetBy: s.count / 2)
    return s.count % 2 == 0 ? "\(s[s.index(before: index)])\(s[index])" : "\(s[index])"
}