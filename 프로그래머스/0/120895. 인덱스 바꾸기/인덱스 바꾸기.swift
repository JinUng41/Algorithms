import Foundation

func solution(_ my_string:String, _ num1:Int, _ num2:Int) -> String {
    var arr = my_string.map { String($0) }
    arr.swapAt(num1, num2)
    return arr.joined()
}