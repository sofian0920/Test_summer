import UIKit

let input = [3,27]
let n = input[0]
let s = input[1]

var scores = [(Int, Int)]()
for _ in 0..<n {
    let lr = [11,14,2,10,11,14]
    scores.append((lr[0], lr[1]))
}

scores.sort(by: { $0.0 + $0.1 < $1.0 + $1.1 })

var left = 0
var right = s
var ans = 0

while left <= right {
    let mid = (left + right) / 2
    var sum = 0
    var lower = 0
    
    for i in 0..<n {
        let (l, r) = scores[i]
        if r < mid {
            lower += 1
            sum += l
        } else {
            sum += r
        }
    }
    
    if lower <= n / 2 && sum <= s {
        ans = mid
        left = mid + 1
    } else {
        right = mid - 1
    }
}

print(ans)
