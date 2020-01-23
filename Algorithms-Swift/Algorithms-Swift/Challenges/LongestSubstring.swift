//
//  LongestSubstring.swift
//  Algorithms-Swift
//
//  Created by Nabil Safatli on 2020-01-21.
//  Copyright © 2020 Nabil. All rights reserved.
//

/*
 Given a string, find the length of the longest substring without repeating characters.

 Example 1:

 Input: "abcabcbb"
 Output: 3
 Explanation: The answer is "abc", with the length of 3.

 Example 2:

 Input: "bbbbb"
 Output: 1
 Explanation: The answer is "b", with the length of 1.

 Example 3:

 Input: "pwwkew"
 Output: 3
 Explanation: The answer is "wke", with the length of 3.
              Note that the answer must be a substring, "pwke" is a subsequence and not a substring.

Reference: https://leetcode.com/problems/longest-substring-without-repeating-characters/
 
 */

import Foundation

class LongestSubstring {
//    static func execute() {
//        let string = "dvdf"
//        let lenght = lengthOfLongestSubstring(string)
//        print("The lenght of longest substring is \(lenght)")
//    }
//
//    static func lengthOfLongestSubstring(_ s: String) -> Int {
//        guard s.count > 0 else {
//            return 0
//        }
//        var longestSize: Int?
//        var charactersWithoutRepetition = [Character: Int]()
//        for (i, character) in s.enumerated() {
//            if let characterIndex = charactersWithoutRepetition[character] {
//                let finalIndex = s.index(s.endIndex, offsetBy: -(s.count - characterIndex))
//                return lengthOfLongestSubstring(s[finalIndex...])
//            } else {
//                charactersWithoutRepetition[character] = i
//                if charactersWithoutRepetition.count > longestSize ?? 0 {
//                    longestSize = charactersWithoutRepetition.count
//                }
//            }
//        }
//        return longestSize ?? charactersWithoutRepetition.count
//    }
}
