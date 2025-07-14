import Foundation

func solution(_ picture: [String], _ k: Int) -> [String] {
    return picture.flatMap { row -> [String] in
        let horizontallyStretchedRow = row
            .map { String(repeating: $0, count: k) }
            .joined()
        return Array(repeating: horizontallyStretchedRow, count: k)
    }
}