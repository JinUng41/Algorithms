import Foundation

func solution(_ n: Int) -> Int {
    var townNumber = 0
    var count = 0
    
    while count < n {
        townNumber += 1
        
        if townNumber % 3 == 0 || String(townNumber).contains("3") {
            continue
        }
        
        count += 1
    }
    
    return townNumber
}