import Foundation

var sticks = [Int]()
for _ in 0..<Int(readLine()!)! {
    sticks.append(Int(readLine()!)!)
}
var stack = [Int]()
var maxHeight = 0
for stick in sticks.reversed() where stick > maxHeight {
    stack.append(stick)
    maxHeight = stick
}
print(stack.count)