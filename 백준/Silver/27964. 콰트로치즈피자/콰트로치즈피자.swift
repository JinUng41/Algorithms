func BOJ_27964() {
    _ = readLine()
    let toppings = readLine()!.split(separator: " ").map { String($0) }
    var cheeseSet = Set<String>()
    toppings.forEach { if $0.hasSuffix("Cheese") { cheeseSet.insert($0) } }
    print(cheeseSet.count > 3 ? "yummy" : "sad")
}
BOJ_27964()