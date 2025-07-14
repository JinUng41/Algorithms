import Foundation

func solution(_ babbling:[String]) -> Int {
    let validSounds = ["aya", "ye", "woo", "ma"]
    return babbling.filter { word in
        var tempWord = word
        for sound in validSounds {
            tempWord = tempWord.replacingOccurrences(of: sound, with: " ")
        }
        let finalWord = tempWord.replacingOccurrences(of: " ", with: "")
        return finalWord.isEmpty
    }
    .count
}