import UIKit

let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0]
let m = input[1]
let k = input[2]

let total_checks = n * k
let total_time = total_checks / m + (total_checks % m == 0 ? 0 : 1)
print(total_time)
