import UIKit

// https://leetcode.com/problems/valid-anagram/description/

/*
 Given two strings s and t, return true if t is an anagram of s, and false otherwise.

 An Anagram is a word or phrase formed by rearranging the letters of a different word or phrase, typically using all the original letters exactly once.
 
 Example 1:

 Input: s = "anagram", t = "nagaram"
 Output: true
 
 Example 2:

 Input: s = "rat", t = "car"
 Output: false
 */

func isAnagram(_ s: String, _ t: String) -> Bool {
    if s.count != t.count { return false }
    
    var characterCount: [Character: Int] = [:]
    
    for char in s {
        characterCount[char, default: 0] += 1
    }
    
    for char in t {
        if let count = characterCount[char] {
            if count == 1 {
                characterCount.removeValue(forKey: char)
            } else {
                characterCount[char] = count - 1
            }
        } else {
            return false
        }
    }
    
    return characterCount.isEmpty
}

print(isAnagram("anagram", "nagaram"))
//print(isAnagram("rat", "car"))
