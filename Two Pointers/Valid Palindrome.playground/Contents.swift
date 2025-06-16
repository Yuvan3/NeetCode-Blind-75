import UIKit

// https://leetcode.com/problems/valid-palindrome/

/*
 Example 1:
 Input: s = "A man, a plan, a canal: Panama"
 Output: true
 Explanation: "amanaplanacanalpanama" is a palindrome.
 
 Example 2:
 Input: s = "race a car"
 Output: false
 Explanation: "raceacar" is not a palindrome.
 
 Example 3:
 Input: s = " "
 Output: true
 Explanation: s is an empty string "" after removing non-alphanumeric characters.
 Since an empty string reads the same forward and backward, it is a palindrome.
 */

func isPalindrome(_ s: String) -> Bool {
    guard !s.isEmpty else { return true }
    var left = s.startIndex
    var right = s.index(before: s.endIndex)
    
    while left < right {
        // Skip non-alphanumeric characters from left
        while left < right && isAlphaNum(s[left]) == false {
            left = s.index(after: left)
        }
        
        // Skip non-alphanumeric characters from right
        while left < right && isAlphaNum(s[right]) == false {
            right = s.index(before: right)
        }
        
        // Compare valid characters if pointers haven't met
        if left < right {
            if s[left].lowercased() != s[right].lowercased() {
                return false
            }
            // Move pointers
            left = s.index(after: left)
            right = s.index(before: right)
        }
    }
    
    
    return true
}

func isAlphaNum(_ c: Character) -> Bool {
    return c.isLetter || c.isNumber
}

let s = "A man, a plan, a canal: Panama"
print(isPalindrome(s))
 
