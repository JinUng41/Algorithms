import Foundation

func solution(_ keyinput:[String], _ board:[Int]) -> [Int] {
    let maxX = (board[0] - 1) / 2, maxY = (board[1] - 1) / 2
    var x = 0, y = 0
    for key in keyinput {
        var tempX = x, tempY = y
        switch key {
        case "up":
            tempY += 1
        case "down":
            tempY -= 1
        case "left":
            tempX -= 1
        case "right":
            tempX += 1
        default:
            break
        }
        
        if abs(tempX) <= maxX, abs(tempY) <= maxY {
            x = tempX
            y = tempY
        }
    }
    return [x, y]
}