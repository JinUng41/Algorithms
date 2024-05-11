func pascal(_ n: Int, _ k: Int) -> Int {
    if k == 0 || k == n {
        return 1
    }
    return pascal(n-1, k-1) + pascal(n-1, k)
}

let nk = readLine()!.split(separator: " ").map { Int($0)! }
let (n, k) = (nk[0]-1, nk[1]-1)
print(pascal(n, k))