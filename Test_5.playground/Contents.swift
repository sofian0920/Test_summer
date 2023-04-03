import UIKit

//    let n = Int(readLine()!)!
//    let arr = [1, -1, 2, -2, 3, -3]
//    let result = countNormalSegments(arr)
//    print(result)
//
//    func countNormalSegments(_ arr: [Int]) -> Int {
//        var count = 0
//        var prefixSumDict = [0: 1]
//        var sum = 0
//
//        for i in 0..<arr.count {
//            sum += arr[i]
//            if let prefixCount = prefixSumDict[sum] {
//                count += prefixCount
//                prefixSumDict[sum] = prefixCount + 1
//            } else {
//                prefixSumDict[sum] = 1
//            }
//        }
//
//        return count
//    }

//print(result)


//let days = Int(readLine()!)!
//
//let a = readLine()!.split(separator: " ").map{Int($0)!}
//var count = 0
//var sums = [Int: Int]()
//
//var sum = 0
//sums[sum] = 1
//
//for i in 0..<days {
//    sum += a[i]
//    if let val = sums[sum] {
//        count += val
//        sums[sum]! += 1
//    } else {
//        sums[sum] = 1
//    }
//}
//
//print(count)


//
//let n = 5
//
//let a = [-1,1,2,-3,6]
//var count = 0
//var sums = [Int: Int]()
//
//var sum = 0
//sums[sum] = 1
//
//for i in 0..<n {
//    sum += a[i]
//    if let val = sums[sum] {
//        count += val
//        sums[sum]! += 1
//    }
//    sums[sum] = (sums[sum] ?? 0) + 1
//}
//
//
//print(count)


//let n = Int(readLine()!)!
//
//let a = readLine()!.split(separator: " ").map{Int($0)!}
//var count = 0
//var sums = [Int: Int]()
//
//var sum = 0
//sums[sum] = 1
//
//for i in 0..<n {
//    sum += a[i]
//    if let val = sums[sum] {
//        count += val
//        sums[sum]! += 1
//    } else {
//        sums[sum] = 1
//    }
//}
//
//print(count)


//
//let n = 3
//let a = [42,-42,42]
//
//var prefixSum = [0]
//for i in 0..<n {
//    prefixSum.append(prefixSum[i] + a[i])
//}
//
//var count = 0
//var sums = [Int: Int]()
//for i in 0..<n {
//    if let val = sums[prefixSum[i]] {
//        count += val
//        sums[prefixSum[i]]! += 1
//    } else {
//        sums[prefixSum[i]] = 1
//    }
//}
//
//print(count)


let n = Int(readLine()!)!
let a = readLine()!.split(separator: " ").map{Int($0)!}

var prefixSum = [0]
for i in 0..<n {
    prefixSum.append(prefixSum[i] + a[i])
}

var count = 1
var sums = [Int: Int]()
for i in 0..<n {
    if let val = sums[prefixSum[i]] {
        count += val
    }
    if let val = sums[prefixSum[i] + a[i]] {
        sums[prefixSum[i] + a[i]] = val + 1
    } else {
        sums[prefixSum[i] + a[i]] = 1
    }
}

print(count)

