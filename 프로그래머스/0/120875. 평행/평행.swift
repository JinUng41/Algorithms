import Foundation

func solution(_ dots: [[Int]]) -> Int {
    let combinations = [
        ((0, 1), (2, 3)),
        ((0, 2), (1, 3)),
        ((0, 3), (1, 2))
    ]
    
    for combination in combinations {
        let p1 = dots[combination.0.0]
        let p2 = dots[combination.0.1]
        let p3 = dots[combination.1.0]
        let p4 = dots[combination.1.1]
        
        let deltaY1 = p2[1] - p1[1]
        let deltaX1 = p2[0] - p1[0]
        
        let deltaY2 = p4[1] - p3[1]
        let deltaX2 = p4[0] - p3[0]
        
        if deltaY1 * deltaX2 == deltaY2 * deltaX1 {
            return 1
        }
    }
    
    return 0
}