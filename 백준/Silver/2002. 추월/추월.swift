func BOJ_2002() {
    var inCars = [String]()
    var outCars = [String]()
    let n = Int(readLine()!)!
    for _ in 0..<n { inCars.append(readLine()!) }
    for _ in 0..<n { outCars.append(readLine()!) }
    
    inCars.reverse()
    outCars.reverse()
    var carList = Set<String>()
    var count = 0
    while !inCars.isEmpty && !outCars.isEmpty {
        let inFirst = inCars.last!
        let outFirst = outCars.last!
        
        if carList.contains(inFirst) {
            inCars.removeLast()
        } else if inFirst == outFirst {
            carList.insert(inFirst)
            inCars.removeLast()
            outCars.removeLast()
        } else {
            count += 1
            carList.insert(outFirst)
            outCars.removeLast()
        }
    }
    print(count)
}
BOJ_2002()