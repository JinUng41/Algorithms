import Foundation
while true {
    guard let input = readLine(),
          let weigh = Float(input)
    else {
        continue
    }
    if weigh == -1.0 { break }
    print(String(format: "Objects weighing %.02f on Earth will weigh %.02f on the moon.", weigh, weigh * 0.167))
}