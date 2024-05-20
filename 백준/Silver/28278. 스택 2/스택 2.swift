var s=[Int]()
for _ in 0..<Int(readLine()!)!{
let i=readLine()!.split(separator: " ").map{Int($0)!}
switch i.first!{
case 1:s.append(i[1])
case 2:print(s.isEmpty ? -1:s.removeLast())
case 3:print(s.count)
case 4:print(s.isEmpty ?1:0)
case 5:print(s.isEmpty ? -1:s.last!)
default:break}}