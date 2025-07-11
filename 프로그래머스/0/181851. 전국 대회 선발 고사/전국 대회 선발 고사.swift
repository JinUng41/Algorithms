import Foundation

func solution(_ rank:[Int], _ attendance:[Bool]) -> Int {
    let arr = zip(rank.enumerated(), attendance)
        .filter { $0.1 }
        .map { $0.0 }
        .sorted { $0.element < $1.element }
    
    return 10_000 * arr[0].offset + 100 * arr[1].offset +  arr[2].offset
}