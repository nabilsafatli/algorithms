//
//  MaxContiguousSubarraySum.swift
//  Algorithms-Swift
//
//  Created by Nabil Safatli on 2020-01-23.
//  Copyright © 2020 Nabil. All rights reserved.
//

import Foundation

class MaxContiguousSubarraySum {
    static func execute() {
        let numbers = [-2, 1, -3, 4, -1, 2, 1, -5, 4]
        let result = maxContigousSum(in: numbers)
        print("Result is \(result)")
    }

    static func maxContigousSum(in array:[Int]) -> Int {
        var i  = 0
        var maxSum = 0

        while i < array.count {
            var currentSum = 0
            for j in i..<array.count {
                currentSum += array[j]
                if currentSum > maxSum {
                    maxSum = currentSum
                }
            }
            i += 1
        }

        return maxSum
    }
}
