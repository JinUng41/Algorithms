import Foundation

func solution(_ keyinput:[String], _ board:[Int]) -> [Int] {
    let xLimit = (board[0] - 1) / 2, yLimit = (board[1] - 1) / 2
    var position = [0, 0]
    
    for key in keyinput {
        switch key {
        case "up" where position[1] < yLimit:
            position[1] += 1
        case "down" where position[1] > -yLimit:
            position[1] -= 1
        case "left" where position[0] > -xLimit:
            position[0] -= 1
        case "right" where position[0] < xLimit:
            position[0] += 1
        default:
            break
        }
    }
    
    return position
}