import Foundation

func solution(_ my_string:String, _ overwrite_string:String, _ s:Int) -> String {
    var result = my_string
    let start = my_string.index(my_string.startIndex, offsetBy: s)
    let end = my_string.index(start, offsetBy: overwrite_string.count)
    
    result.replaceSubrange(start..<end, with: overwrite_string)
    return result
}