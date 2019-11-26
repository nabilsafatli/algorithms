//
//  QuickSort.swift
//  Algorithms-Swift
//
//  Created by Nabil Safatli on 2019-11-26.
//  Copyright © 2019 Nabil. All rights reserved.
//

import Foundation

class QuickSort {
    static func sort(array: [Int]) -> [Int] {
        guard array.count > 1 else { return array }
        var lessThanPivot = [Int]()
        var equalToPivot = [Int]()
        var greaterThanPivot = [Int]()
        let pivot = array[array.count/2]
        for number in array {
            if number > pivot {
                greaterThanPivot.append(number)
            } else if number == pivot {
                equalToPivot.append(number)
            } else {
                lessThanPivot.append(number)
            }
        }
        return sort(array: lessThanPivot) + equalToPivot + sort(array: greaterThanPivot)
    }

    static func execute() {
        let unsortedArraySample = [10, 3, 1, 7, 0, 2, 8]
        let sortedArray = sort(array: unsortedArraySample)
        for n in sortedArray {
            print(n)
        }
    }
}
