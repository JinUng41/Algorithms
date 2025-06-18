import Foundation

func solution(_ todo_list:[String], _ finished:[Bool]) -> [String] {
    return zip(todo_list, finished).compactMap { $1 ? nil : $0 }
}