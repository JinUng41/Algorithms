func BOJ_2864() {
    let numbers = readLine()!.split(separator: " ").map { String($0) }
    func transform(_ number: String, from: Character, to: Character) -> Int {
        return Int(number.map { String($0 == from ? to : $0) }.joined())!
    }
    let minNumbers = numbers.map { transform($0, from: "6", to: "5") }
    let maxNumbers = numbers.map { transform($0, from: "5", to: "6") }
    print("\(minNumbers.reduce(0, +)) \(maxNumbers.reduce(0, +))")
}
BOJ_2864()