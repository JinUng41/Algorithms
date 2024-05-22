func BOJ_2841(_ N: Int, _ P: Int) {
    var count = 0
    var stacks = [[Int]](repeating: [], count: N)
    for _ in 0..<N {
        let input = readLine()!.split(separator: " ").map { Int($0)! }
        let line = input[0]-1, fret = input[1]
        
        while let lastFret = stacks[line].last,
              lastFret > fret {
            stacks[line].removeLast()
            count += 1
        }
        
        if stacks[line].last != fret {
            stacks[line].append(fret)
            count += 1
        }
    }
    print(count)
}
let NP = readLine()!.split(separator: " ").map { Int($0)! }
BOJ_2841(NP[0], NP[1])