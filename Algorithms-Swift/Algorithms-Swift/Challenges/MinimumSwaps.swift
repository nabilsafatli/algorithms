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
        quickSort(&myArray, begin: 0, end: myArray.count - 1)
        return swapsCounter
    }

    static func quickSort(_ array: inout [Int], begin: Int, end: Int) {
        if begin < end {
            let partitionIndex = partition(&array, begin, end)
            quickSort(&array, begin: begin, end: partitionIndex - 1)
            quickSort(&array, begin: partitionIndex + 1, end: end)
        }
    }

    static func partition(_ array: inout [Int],_ begin: Int,_ end: Int) -> Int {
        let pivot = array[end]
        var i = begin - 1
        for j in begin..<end {
            if array[j] <= pivot {
                i += 1
                swap(i: i, j: j, array: &array)
            }
        }

        swap(i: i + 1, j: end, array: &array)

        return i + 1
    }

    static func swap(i: Int, j: Int, array: inout [Int]) {
        swapsCounter += 1
        let temporary = array[i]
        array[i] = array[j]
        array[j] = temporary
    }

    static func execute() {
        let array = [4, 3, 1, 2]
        let counter = minimumSwaps(arr: array)
        print("Minimum swaps for [4, 3, 1, 2] is \(counter)")
    }
}
