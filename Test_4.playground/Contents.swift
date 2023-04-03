import UIKit

//func isBoring(_ counts: [Int]) -> Bool {
//    let uniqueCounts = Set(counts)
//    return uniqueCounts.count <= 1 || (uniqueCounts.count == 2 && counts.contains(uniqueCounts.min()!) && counts.contains(uniqueCounts.max()!))
//}
//
//let n = Int(readLine()!)!
//let a = readLine()!.split(separator: " ").map { Int($0)! }
//
//var counts = [Int: Int]()
//var prefixCounts = [Int]()
//
//for x in a {
//    counts[x, default: 0] += 1
//    prefixCounts.append(counts[x]!)
//}
//
//if isBoring(prefixCounts) {
//    print(2)
//} else {
//
//    for l in stride(from: n - 1, to: 2, by: -1) {
//        counts[a[l], default: 0] -= 1
//        prefixCounts[l] -= 1
//        if isBoring(Array(prefixCounts.prefix(l))) {
//            print(l)
//            break
//        }
//    }
//}

let s = readLine()!

let n = Int(readLine()!)!
let nums = readLine()!.split(separator: " ").map { Int($0)! }
let result = findMaxBoringPrefix(nums)

func isBoring(_ prefix: [Int]) -> Bool {
    var counters = [Int: Int]()
    for num in prefix {
        counters[num] = (counters[num] ?? 0) + 1
    }
    let counts = Array(Set(counters.values))
    return counts.count == 1 || (counts.count == 2 && abs(counts[0] - counts[1]) == 1)
}

func findMaxBoringPrefix(_ nums: [Int]) -> Int {
    for i in stride(from: nums.count-1, to: 1, by: -1) {
        let prefix = Array(nums.prefix(i))
        if isBoring(prefix) {
            return i
        }
    }
    return 1
}

print(result)
