import Foundation

print(readLine()!.split(separator: " ").map { Int(String($0))! }.sorted()[1])