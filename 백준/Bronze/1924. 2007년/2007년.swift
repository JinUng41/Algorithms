import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let month = input[0], day = input[1]

let daysInMonth = [0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
let dayOfWeek = ["SUN", "MON", "TUE", "WED", "THU", "FRI", "SAT"]

var totalDays = day
for m in 1..<month {
    totalDays += daysInMonth[m]
}

let dayIndex = totalDays % 7
print(dayOfWeek[dayIndex])