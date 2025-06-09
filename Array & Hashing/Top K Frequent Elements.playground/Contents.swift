import UIKit

// https://leetcode.com/problems/top-k-frequent-elements/description/

/*
 Given an integer array nums and an integer k, return the k most frequent elements. You may return the answer in any order.
 
 Example 1:
 Input: nums = [1,1,1,2,2,3], k = 2
 Output: [1,2]
 
 Example 2:
 Input: nums = [1], k = 1
 Output: [1]
 */

func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
    var frequencyMap: [Int: Int] = [:]
    var result: [Int] = []
    
    for i in nums {
        frequencyMap[i, default: 0] += 1
    }
    
    var buckets = Array(repeating: [Int](), count: nums.count + 1)
    for (num, freq) in frequencyMap {
        buckets[freq].append(num)
    }
    
    var i = buckets.count - 1
      while i >= 0 {
          for num in buckets[i] {
              result.append(num)
              if result.count == k {
                  return result
              }
          }
          i -= 1
      }
    
    return result
}

let nums = [1,1,1,2,2,3], k = 2
//let nums = [1], k = 1
print(topKFrequent(nums, k))
