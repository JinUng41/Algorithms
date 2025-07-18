import Foundation

var result = ""
for _ in 0..<Int(readLine()!)! {
    let input = readLine()!.split(separator: " ").compactMap { String($0) }

    result += input[0].sorted() == input[1].sorted()
    ? "\(input[0]) & \(input[1]) are anagrams.\n"
    : "\(input[0]) & \(input[1]) are NOT anagrams.\n"
}
print(result)