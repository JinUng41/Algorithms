import Foundation

func solution(_ n:Int, _ control:String) -> Int {
    var num = n
    let controls = control.map { String($0) }
    for control in controls {
        switch control {
        case "w": num += 1
        case "s": num -= 1
        case "d": num += 10
        default: num -= 10
        }
    }
    return num
}