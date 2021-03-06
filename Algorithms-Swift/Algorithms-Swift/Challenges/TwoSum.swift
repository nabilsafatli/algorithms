//
//  TwoSum.swift
//  Algorithms-Swift
//
//  Created by Nabil Safatli on 2019-11-09.
//  Copyright © 2019 Nabil. All rights reserved.
//
/*
 Given an array of integers, return indices of the two numbers such that they add up to a specific target.
 You may assume that each input would have exactly one solution, and you may not use the same element twice.

 Example:
 Given nums = [2,7,11,15]
 Because nums[0] + nums[1] = 2 + 7 = 9, return [0,1]
*/

import Foundation

struct TwoSum {

    func twoSum(_ nums: [Int], _ target: Int) -> [Int]? {
        var dictionary = [Int: Int]()
        for (i, number) in nums.enumerated() {
            let numberToBeFound = target - number
            if let complementIndex = dictionary[numberToBeFound] {
                return [complementIndex, i]
            }
            dictionary[number] = i
        }
        return nil
    }
}
