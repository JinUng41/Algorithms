let abc = readLine()!.split(separator: " ").map { Int($0)! }
print(abc[1] / abc[0] * 3 * abc[2])