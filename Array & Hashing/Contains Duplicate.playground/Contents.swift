import UIKit

// https://leetcode.com/problems/contains-duplicate/

/*
 Given an integer array nums, return true if any value appears at least twice in the array, and return false if every element is distinct.
 
 Example 1:

 Input: nums = [1,2,3,1]
 Output: true
 
 Example 2:

 Input: nums = [1,2,3,4]
 Output: false
 
 Example 3:

 Input: nums = [1,1,1,3,3,4,3,2,4,2]
 Output: true
 */

//MARK: - Using Dict -> Time & Space Complexity O(n)
//func containsDuplicate(_ nums: [Int]) -> Bool {
//    var elementCount: [Int: Int] = [:]
//    
//    for num in nums {
//        if let _ = elementCount[num] {
//            return true
//        } else {
//            elementCount[num] = 1
//        }
//    }
//    
//    return false
//}

//MARK: - Using Set -> Time & Space Complexity O(n)
func containsDuplicate(_ nums: [Int]) -> Bool {
    var seen = Set<Int>()
    
    for num in nums {
        if seen.contains(num) {
            return true
        } else {
            seen.insert(num)
        }
    }
    
    return false
}


let input = [1,2,3,1]
//let input = [1,2,3,4]
//let input = [1,1,1,3,3,4,3,2,4,2]
print(containsDuplicate(input))

