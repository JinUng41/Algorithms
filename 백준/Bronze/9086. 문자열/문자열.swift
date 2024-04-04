if let input = Int(readLine()!), input < 10, input > 1 {
    for _ in 1...input {
        let input = readLine()!
        print("\(input.first!)\(input.last!)")
    }
}