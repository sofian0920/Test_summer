import UIKit

let n = Int(readLine()!)!
let s = readLine()!

var freq = [Int](repeating: 0, count: 4)
var found = [Bool](repeating: false, count: 4)

var ans = Int.max

var l = 0

for r in 0..<n {
    let c = s[s.index(s.startIndex, offsetBy: r)]
    freq[charToIndex(c)] += 1
    
  
    if freq[charToIndex(c)] == 1 {
        found[charToIndex(c)] = true
    }
    
    
    while freq[charToIndex(s[s.index(s.startIndex, offsetBy: l)])] > 1 {
        freq[charToIndex(s[s.index(s.startIndex, offsetBy: l)])] -= 1
        l += 1
    }
    
    
    if found[0] && found[1] && found[2] && found[3] {
        ans = min(ans, r - l + 1)
    }
}


if ans == Int.max {
    print(-1)
} else {
    print(ans)
}

func charToIndex(_ c: Character) -> Int {
    return Int(c.asciiValue! - Character("a").asciiValue!)
}

