func BOJ_31797(_ N: Int, _ M: Int) {
    var hands = [(height: Int, player: Int)]()
    for i in 1...M {
        readLine()!
            .split(separator: " ")
            .map { Int($0)! }
            .forEach { hands.append(($0, i)) }
    }
    hands.sort { $0.height < $1.height }
    print(hands[(N-1)%(M*2)].player)
}
let NM = readLine()!.split(separator: " ").map { Int($0)! }
BOJ_31797(NM[0], NM[1])