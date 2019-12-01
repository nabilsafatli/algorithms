//
//  MergeSort.swift
//  Algorithms-Swift
//
//  Created by Nabil Safatli on 2019-11-28.
//  Copyright © 2019 Nabil. All rights reserved.
//

import Foundation

class MergeSort {
    static func execute() {
        let unsortedArraySample = [10, 3, 1, 7, 0, 2, 8]
        let sortedArray = sort(unsortedArraySample)
        for n in sortedArray {
            print(n)
        }
    }

    static func sort(_ array: [Int]) -> [Int] {
        guard array.count > 1 else { return array }

        let middleIndex = array.count / 2
        let leftArray = sort(Array(array[0..<middleIndex]))
        let rightArray = sort(Array(array[middleIndex..<array.count]))
        
        return merge(leftArray: leftArray, rightArray: rightArray)
    }
    
    static func merge(leftArray: [Int], rightArray: [Int]) -> [Int] {
        var leftIndex = 0
        var rightIndex = 0
        
        var orderedArray = [Int]()
        orderedArray.reserveCapacity(leftArray.count + rightArray.count)
        
        while leftIndex < leftArray.count && rightIndex < rightArray.count {
            if leftArray[leftIndex] < rightArray[rightIndex] {
                orderedArray.append(leftArray[leftIndex])
                leftIndex += 1
            } else if leftArray[leftIndex] > rightArray[rightIndex] {
                orderedArray.append(rightArray[rightIndex])
                rightIndex += 1
            } else {
                orderedArray.append(leftArray[leftIndex])
                leftIndex += 1
                orderedArray.append(rightArray[rightIndex])
                rightIndex += 1
            }
        }
        
        while leftIndex < leftArray.count {
            orderedArray.append(leftArray[leftIndex])
            leftIndex += 1
        }
        
        while rightIndex < rightArray.count {
            orderedArray.append(rightArray[rightIndex])
            rightIndex += 1
        }
        
        return orderedArray
    }
}
