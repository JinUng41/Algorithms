import Foundation

func solution(_ balls:Int, _ share:Int) -> Int {
    let r = min(share, balls - share)
    var result = 1
    for i in 0..<r { result = result * (balls - i) / (i + 1) }
    return result
}