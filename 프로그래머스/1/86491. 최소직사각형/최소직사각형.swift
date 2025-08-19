import Foundation

func solution(_ sizes:[[Int]]) -> Int {
    var maxWidth = 0
    var maxHeight = 0
    for size in sizes {
        let width = max(size[0], size[1])
        let height = min(size[0], size[1])
        maxWidth = max(maxWidth, width)
        maxHeight = max(maxHeight, height)
    }
    return maxWidth * maxHeight
}