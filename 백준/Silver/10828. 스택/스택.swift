let N = Int(readLine()!)!
var array = [String]()

for _ in 1...N {
    let order = readLine()!.split(separator: " ").map { "\($0)" }
    switch order[0] {
    case "push":
        array.append(order[1])
    case "pop":
        guard array.isEmpty else {
            print(array.removeLast())
            continue
        }
        print("-1")
    case "size":
        print("\(array.count)")
    case "empty":
        print("\(array.isEmpty ? 1 : 0)")
        
    case "top":
        guard array.isEmpty else {
            print(array.last!)
            continue
        }
        print("-1")
    default:
        break
    }
}