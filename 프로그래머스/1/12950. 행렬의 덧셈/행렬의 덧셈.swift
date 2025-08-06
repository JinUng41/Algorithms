func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    return zip(arr1, arr2).map { arr1, arr2 in
        zip(arr1, arr2).map { $0 + $1 }
    }
}