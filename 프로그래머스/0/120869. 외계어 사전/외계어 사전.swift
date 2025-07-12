import Foundation

func solution(_ spell: [String], _ dic: [String]) -> Int {
    let spellSet = Set(spell)

    let isMatchFound = dic.contains { word in
        if word.count != spellSet.count {
            return false
        }
        return Set(word) == Set(spell.joined())
    }
    return isMatchFound ? 1 : 2
}