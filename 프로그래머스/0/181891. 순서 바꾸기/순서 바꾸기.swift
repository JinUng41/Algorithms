import Foundation

func solution(_ num_list:[Int], _ n:Int) -> [Int] {
    var temp = [Int]()
    for i in n..<num_list.count {
        temp.append(num_list[i])
    }
    for i in 0..<n {
        temp.append(num_list[i])
    }
    return temp
}