let paid = Int(readLine()!)!
var remainder = 1000 - paid
var result = 0
let coins = [500, 100, 50, 10, 5, 1]
for coin in coins {
    result += remainder / coin
    remainder %= coin
}
print(result)