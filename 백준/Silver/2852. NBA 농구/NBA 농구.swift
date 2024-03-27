import Foundation
func BOJ_2852(_ N: Int) {
    var score = [0, 0], winTime = [0, 0], current = 0
    for _ in 0..<N {
        let input = readLine()!.split(separator: " ")
        let time = input[1].split(separator: ":").map { Int($0)! }
        let gameTime = time[0] * 60 + time[1]
        
        if score[0] > score[1] { winTime[0] += (gameTime - current) }
        if score[0] < score[1] { winTime[1] += (gameTime - current) }
        
        score[Int(input[0])! - 1] += 1
        current = gameTime
    }
    
    if score[0] > score[1] { winTime[0] += (48 * 60 - current) }
    if score[0] < score[1] { winTime[1] += (48 * 60 - current) }
    
    print("\(String(format: "%02d", winTime[0]/60)):\(String(format: "%02d", winTime[0]%60))")
    print("\(String(format: "%02d", winTime[1]/60)):\(String(format: "%02d", winTime[1]%60))")
}
BOJ_2852(Int(readLine()!)!)