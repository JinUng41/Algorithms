import Foundation

func solution(_ rsp:String) -> String {
    let dict = ["2": "0", "0": "5", "5": "2"]
    return rsp.map { dict[String($0)]! }.joined()
}