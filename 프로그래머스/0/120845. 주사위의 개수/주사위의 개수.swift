import Foundation

func solution(_ box:[Int], _ n:Int) -> Int {
    // 1. box 배열에서 각 차원의 길이를 가져옵니다.
    let x = box[0]
    let y = box[1]
    let z = box[2]
    
    // 2. 각 차원별로 들어갈 수 있는 주사위의 개수를 계산하고 곱합니다.
    // Swift에서 Int끼리 나누면 자동으로 소수점 이하를 버리기 때문에 Python의 // 와 동일하게 동작합니다.
    let result = (x / n) * (y / n) * (z / n)
    
    // 3. 최종 결과를 반환합니다.
    return result
}