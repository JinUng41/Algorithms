func BOJ_10987(_ word: String) {
    var count = 0    
    for char in word {
        if ["a", "e", "i", "o", "u"].contains(char) { count += 1 }
    }
    print(count)
}
BOJ_10987(readLine()!)