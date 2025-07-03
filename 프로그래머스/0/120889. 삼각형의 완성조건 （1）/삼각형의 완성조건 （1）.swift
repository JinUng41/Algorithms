import Foundation

func solution(_ sides:[Int]) -> Int {
    let temp = sides.sorted()
    return (temp[0] + temp[1]) > temp [2] ? 1 : 2
}