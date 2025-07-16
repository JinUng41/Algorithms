import Foundation

func solution(_ common:[Int]) -> Int {
    if common[1] - common[0] == common[2] - common[1] {
        let n = common[1] - common[0]
        return common.last! + n
    } else {
        let n = common[1] / common[0]
        return common.last! * n
    }
}