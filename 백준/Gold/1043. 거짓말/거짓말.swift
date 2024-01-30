func find(_ index: Int) -> Int {
    if index != people[index] {
        people[index] = find(people[index])
    }
    return people[index]
}
func union(_ a: Int, _ b: Int) {
    let aP = find(a)
    let bP = find(b)
    if aP == 0 && bP != 0 {
        people[bP] = 0
    } else if aP != 0 && bP == 0 {
        people[aP] = 0
    } else {
        people[bP] = aP
    }
}
let nm = readLine()!.split(separator: " ").map { Int($0)! }
let (n, m) = (nm[0], nm[1])
var people = [Int](0...n)
let known = readLine()!.split(separator: " ").map { Int($0)! }
if known.count != 1 {
    for person in known[1..<known.count] {
        union(0, person)
    }
}
var infos: [[Int]] = []
for _ in 0..<m {
    let partywon = readLine()!.split(separator: " ").map { Int($0)! }
    infos.append(partywon)
    for i in 1..<partywon.count - 1 {
        union(partywon[i], partywon[i + 1])
    }
}
var count = 0
for info in infos {
    var flag = true
    for won in info[1..<info.count] {
        if find(won) == 0 {
            flag = false
            break
        }
    }
    
    if flag {
        count += 1
    }
}
print(count)
