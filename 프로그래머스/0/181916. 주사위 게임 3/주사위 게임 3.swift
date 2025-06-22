import Foundation

func solution(_ a:Int, _ b:Int, _ c:Int, _ d:Int) -> Int {
    var counts = [0, 0, 0, 0, 0, 0, 0]
    counts[a] += 1
    counts[b] += 1
    counts[c] += 1
    counts[d] += 1
    
    var pairs: [Int] = []
    var singles: [Int] = []
    
    for i in 1...6 {
        if counts[i] == 4 {
            return 1111 * i
        } else if counts[i] == 3 {
            let other = (a + b + c + d) - 3 * i
            return (10 * i + other) * (10 * i + other)
        } else if counts[i] == 2 {
            pairs.append(i)
        } else if counts[i] == 1 {
            singles.append(i)
        }
    }
    
    if pairs.count == 2 {
        return (pairs[0] + pairs[1]) * abs(pairs[0] - pairs[1])
    }
    
    if pairs.count == 1 {
        return singles[0] * singles[1]
    }
    
    return singles.min()!
}