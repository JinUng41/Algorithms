func BOJ_27294(_ T: Int, _ S: Int) {
    let conditon = 12 <= T && T <= 16 && S == 0
    print(conditon ? 320 : 280) 
}
let TS = readLine()!.split(separator: " ").map { Int($0)! }
BOJ_27294(TS[0], TS[1])