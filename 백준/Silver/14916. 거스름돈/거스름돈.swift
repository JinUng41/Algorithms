var money = Int(readLine()!)!
var count = 0

while money > 1 {
    if money % 5 == 0 {
        count += money / 5
        break
    }
    
    money -= 2
    count += 1
}

print(money == 1 ? -1 : count)