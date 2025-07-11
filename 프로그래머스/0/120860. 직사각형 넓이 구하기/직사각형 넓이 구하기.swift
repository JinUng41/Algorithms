import Foundation

func solution(_ dots: [[Int]]) -> Int {
    var minX = dots[0][0]
    var maxX = dots[0][0]
    var minY = dots[0][1]
    var maxY = dots[0][1]
    
    for point in dots.dropFirst() {
        let x = point[0]
        let y = point[1]
        
        minX = min(minX, x)
        maxX = max(maxX, x)
        minY = min(minY, y)
        maxY = max(maxY, y)
    }
    
    let width = maxX - minX
    let height = maxY - minY
    
    return width * height
}