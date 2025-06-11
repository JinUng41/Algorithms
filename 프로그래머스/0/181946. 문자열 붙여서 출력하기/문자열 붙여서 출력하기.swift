import Foundation

print(readLine()!.split(separator: " ").compactMap { "\($0)" }.reduce("", +))