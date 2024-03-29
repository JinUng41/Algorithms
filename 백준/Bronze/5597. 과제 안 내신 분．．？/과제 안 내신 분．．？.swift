import Foundation

var students: [Int] = []
for _ in 1...28 {
    students.append(Int(readLine()!)!)
}

for num in 1...30 {
    if !students.contains(num) {
        print(num)
    }
}