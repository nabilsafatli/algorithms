//
//  Sort.swift
//  Algorithms-Swift
//
//  Created by Nabil Safatli on 2019-11-25.
//  Copyright © 2019 Nabil. All rights reserved.
//

import Foundation

class Sort {
    static func bubbleSort(array: [Int]) -> [Int] {
        var sortedArray = array
        var didExecuteSort = false
        for i in 0..<sortedArray.count - 1 {
            if sortedArray[i] > sortedArray[i + 1] {
                let temporaryValue = sortedArray[i]
                sortedArray[i] = sortedArray[i + 1]
                sortedArray[i + 1] = temporaryValue
                didExecuteSort = true
            }
        }

        return didExecuteSort ? bubbleSort(array: sortedArray) : sortedArray
    }

    static func quickSort(array: [Int]) -> [Int] {
        var sortedArray = array
        var j = 0
        for i in stride(from: array.count - 1, to: 0, by: -1) {
            let pivot = sortedArray[i]
            if sortedArray[j] > pivot {
                let temporaryValue = sortedArray[j]
                sortedArray[j] = pivot
                sortedArray[i] = temporaryValue
                j += 1
            }
        }
        return []
    }

    static func execute() {
        let unsortedArraySample = [10, 3, 1, 7, 0, 2, 8]
        let sortedArray = quickSort(array: unsortedArraySample)
        for n in sortedArray {
            print(n)
        }
    }
}
