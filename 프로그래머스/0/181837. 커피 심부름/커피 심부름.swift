import Foundation

func solution(_ order:[String]) -> Int {
    let americano: Set<String> = [
        "iceamericano",
        "americanoice",
        "hotamericano",
        "americanohot",
        "americano"
    ]
    
    let cafelatte: Set<String> = [
        "cafelatte",
        "icecafelatte",
        "cafelatteice",
        "hotcafelatte",
        "cafelattehot"
    ]
    
    return order.map { menu in
        if americano.contains(menu) {
            return 4500
        } else if cafelatte.contains(menu) {
            return 5000
        } else {
            return 4500
        }
    }
    .reduce(0, +)
}