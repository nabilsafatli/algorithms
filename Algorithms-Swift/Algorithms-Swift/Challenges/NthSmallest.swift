//
//  NthSmallest.swift
//  Algorithms-Swift
//
//  Created by Nabil Safatli on 2019-11-27.
//  Copyright © 2019 Nabil. All rights reserved.
//

import Foundation

class NthSmallest {
    // Find the third smallest number in an UNSORTED array
    // { 10, 2, 5, 6, 11, 3, 15 }
    // In this case it would be 4 at index 3
    static func findTheSmallestNth(number: Int, in array: inout [Int]) -> Int {
        if array.count == number {
            return array[array.count - 1]
        }
        let pivot = array[array.count - 1]
        var j = 0
        for i in 0..<array.count {
            if array[i] < pivot {
                let temp = array[j]
                array[j] = array[i]
                array[i] = temp
                j += 1
            }
        }
        let temp = array[j + 1]
        array[j + 1] = array[array.count - 1]
        array[array.count - 1] = temp

        return findTheSmallestNth(number: number, in: &array)
    }
    
    static func execute() {
        var myArray = [10, 2, 5, 6, 11, 3, 15]
        let smallestNumber = 3
        let number = findTheSmallestNth(number: smallestNumber, in: &myArray)
        print("The \(smallestNumber)th number is\(number)")
    }
}
