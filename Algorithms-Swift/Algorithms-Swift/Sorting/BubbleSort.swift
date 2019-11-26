//
//  BubbleSort.swift
//  Algorithms-Swift
//
//  Created by Nabil Safatli on 2019-11-25.
//  Copyright © 2019 Nabil. All rights reserved.
//

import Foundation

class BubbleSort {
    static func sort(array: [Int]) -> [Int] {
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

        return didExecuteSort ? sort(array: sortedArray) : sortedArray
    }

    static func execute() {
        let unsortedArraySample = [10, 3, 1, 7, 0, 2, 8]
        let sortedArray = sort(array: unsortedArraySample)
        for n in sortedArray {
            print(n)
        }
    }
}
