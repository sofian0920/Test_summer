import UIKit

if let input = readLine() {
    let heights = input.split(separator: " ").compactMap { Int($0) }
    if heights.sorted() == heights || heights.sorted(by: >) == heights {
        print("YES")
    } else {
        print("NO")
    }
}

