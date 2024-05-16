func BOJ_19698(_ N: Int, _ W: Int, _ H: Int, _ L: Int) {
    let maxHorizontally = W/L, maxVertically = H/L
    let maxCows = maxHorizontally*maxVertically
    print(min(N, maxCows))
}
let NWHL = readLine()!.split(separator: " ").map { Int($0)! }
BOJ_19698(NWHL[0], NWHL[1], NWHL[2], NWHL[3])