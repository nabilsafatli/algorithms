//
//  SingleNumber2.swift
//  Algorithms-Swift
//
//  Created by Nabil Safatli on 2020-01-20.
//  Copyright © 2020 Nabil. All rights reserved.
//

/*
 Given a non-empty array of integers, every element appears three times except for one, which appears exactly once.
 Find that single one.
 
 Note: Your algorithm should have a linear runtime complexity. Could you implement it without using extra memory?

 Example 1:
 Input: [2,2,3,2]
 Output: 3

 Example 2:
 Input: [0,1,0,1,0,1,99]
 Output: 99

 Reference: https://leetcode.com/articles/single-number-ii
 */

import Foundation

class SingleNumber2 {
    static func findSingleNumber(from numbers: [Int]) -> Int {
        var myNumber = numbers[0]
        var existingNumber = Set<Int>()
        for number in numbers {
            if !existingNumber.contains(number) {
                existingNumber.insert(number)
                myNumber = number
            }
        }

        return myNumber
    }
    
    static func execute() {
        let myNumbers = [1,2,3,4,5,6,7,8,9,1,2,3,4,5,6,7,8,1,2,3,4,5,6,7,8]
        let singleNumber = findSingleNumber(from: myNumbers)
        print("The single number in the array is \(singleNumber)")
    }
}
