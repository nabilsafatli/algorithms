//
//  MinimumSwaps.swift
//  Algorithms-Swift
//
//  Created by Nabil Safatli on 2019-12-07.
//  Copyright © 2019 Nabil. All rights reserved.
//

import Foundation

class MinimumSwaps {
    static var swapsCounter = 0

    static func minimumSwaps(arr: [Int]) -> Int {
        var myArray = arr
        for i in 0..<myArray.count {
            if arr[i] != i + 1 {
                swap(i, myArray[i] - 1, &myArray)
            }
        }
        return swapsCounter
    }
    
    static func swap(_ i: Int, _ j: Int, _ array: inout [Int]) {
        let temporary = array[i]
        array[i] = array[j]
        array[j] = temporary
        swapsCounter += 1
    }

    static func execute() {
        let array = [1, 3, 5, 2, 4, 6, 7]
        let counter = minimumSwaps(arr: array)
        print("Minimum swaps for [1 3 5 2 4 6 7] is \(counter)")
    }
}
