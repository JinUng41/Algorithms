import Foundation

func solution(_ id_pw:[String], _ db:[[String]]) -> String {
    let id = id_pw[0], pw = id_pw[1]
    for i in 0..<db.count where db[i][0] == id {
        return db[i][1] == pw ? "login" : "wrong pw"
    }
    return "fail"
}