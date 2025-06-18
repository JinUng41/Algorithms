import Foundation

func solution(_ a:Int, _ b:Int) -> Int {
    var n1 = Int("\(a)\(b)")!
    var n2 = Int("\(b)\(a)")!
    return n1 < n2 ? n2 : n1
}