import UIKit

// https://leetcode.com/problems/product-of-array-except-self/description/

/*
 Given an integer array nums, return an array answer such that answer[i] is equal to the product of all the elements of nums except nums[i].

 The product of any prefix or suffix of nums is guaranteed to fit in a 32-bit integer.

 You must write an algorithm that runs in O(n) time and without using the division operation.

 Example 1:
 Input: nums = [1,2,3,4]
 Output: [24,12,8,6]
 
 Example 2:
 Input: nums = [-1,1,0,-3,3]
 Output: [0,0,9,0,0]
 */

//MARK: - Time Complexity O(n) & Space Complexity O(1)
func productExceptSelf(_ nums: [Int]) -> [Int] {
    let n = nums.count
    var result = Array(repeating: 1, count: n)
    var prefix = 1, suffix = 1
    
    for i in 0..<n {
        result[i] = prefix
        prefix *= nums[i]
        
        result[n-1-i] *= suffix
        suffix *= nums[n-1-i]
    }
    
    return result
}

let nums = [1,2,3,4]
print(productExceptSelf(nums))
