let N = Int(readLine()!)!
var array = [String]()
var index = 0

for _ in 1...N {
    let order = readLine()!.split(separator: " ").map { "\($0)" }
    switch order[0] {
    case "push":
        array.append(order[1])
    case "pop":
        if array.count <= index {
            print(-1)
        } else {
            print(array[index])
            index += 1
        }
    case "size":
        print(array.count - index)
    case "empty":
        print(array.count <= index ? 1 : 0)
    case "front":
        print(array.count <= index ? -1 : array[index])
    case "back":
        print(array.count <= index ? -1 : array.last!)
    default:
        continue
    }
}