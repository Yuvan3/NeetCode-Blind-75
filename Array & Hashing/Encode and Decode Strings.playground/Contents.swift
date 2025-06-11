import UIKit

// https://neetcode.io/problems/string-encode-and-decode?list=blind75

/*
 Design an algorithm to encode a list of strings to a single string. The encoded string is then decoded back to the original list of strings.

 Please implement encode and decode

 Example 1:

 Input: ["neet","code","love","you"]
 Output:["neet","code","love","you"]
 
 Example 2:

 Input: ["we","say",":","yes"]
 Output: ["we","say",":","yes"]
 */

func encodeAndDecode(_ strs: [String]) -> [String] {
    let encodedString = encode(strs)
    return decode(encodedString)
}

func encode(_ strs: [String]) -> String {
    var encoded = ""
    for str in strs {
        encoded += "\(str.count)#\(str)"
    }
    return encoded
}

func decode(_ s: String) -> [String] {
    var result = [String]()
    var i = 0
    let chars = Array(s)

    while i < chars.count {
        // Read length prefix until '#'
        var j = i
        while chars[j] != "#" {
            j += 1
        }

        let length = Int(String(chars[i..<j]))!
        let start = j + 1
        let end = start + length
        let word = String(chars[start..<end])
        result.append(word)

        i = end  // Move i to the next word's starting point
    }

    return result
}

let input = ["neet","code","love","you"]
print(encodeAndDecode(input))
