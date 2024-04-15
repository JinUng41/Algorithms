var words = [String]()

for _ in 1...5 {
    if let input = readLine() {
        words.append(input)
    }
}

var result = ""

for col in 0..<15 {
    for row in 0..<5 {
        if col < words[row].count {
            result.append(words[row][words[row].index(words[row].startIndex, offsetBy: col)])
        }
    }
}

print(result)
