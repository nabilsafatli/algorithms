//
//  QuickSort.swift
//  Algorithms-Swift
//
//  Created by Nabil Safatli on 2019-11-26.
//  Copyright © 2019 Nabil. All rights reserved.
//

import Foundation

class QuickSort {
    static func execute() {
        var unsortedArraySample = [10, 3, 1, 7, 0, 2, 8]
        let sortedArray = sort(array: &unsortedArraySample)
        for n in sortedArray {
            print(n)
        }
    }
}

//MARK: - Lomuto's partitioning
extension QuickSort {
    static func sort(array: inout [Int]) -> [Int] {
        guard array.count > 1 else { return array }
        var lessThanPivot = [Int]()
        var equalToPivot = [Int]()
        var greaterThanPivot = [Int]()
        let pivotIndex = pivot(array: &array, left: 0, right: array.count - 1)
        for number in array {
            if number > array[pivotIndex] {
                greaterThanPivot.append(number)
            } else if number == array[pivotIndex] {
                equalToPivot.append(number)
            } else {
                lessThanPivot.append(number)
            }
        }
        return sort(array: &lessThanPivot) + equalToPivot + sort(array: &greaterThanPivot)
    }
    
    static func pivot(array: inout [Int], left: Int, right: Int) -> Int {
        let pivot = array[right]
        var i = 0
        for j in left..<right {
            if pivot >= array[j] {
                let temporaryValue = array[i]
                array[i] = array[j]
                array[j] = temporaryValue
                i += 1
            }
        }
        let temporaryValue = array[i]
        array[i] = array[right]
        array[right] = temporaryValue
        return i
    }
}

//MARK: - Basic implementation of Quick Sort
extension QuickSort {
    static func basicSort(array: [Int]) -> [Int] {
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
        return basicSort(array: lessThanPivot) + equalToPivot + basicSort(array: greaterThanPivot)
    }
}
