//
//  Search.swift
//  Algorithms-Swift
//
//  Created by Nabil Safatli on 2019-11-09.
//  Copyright © 2019 Nabil. All rights reserved.
//

import Foundation

struct Search {
    func binarySearch(target: Int, in numbers: [Int]) -> Bool {
        let middleIndex = (numbers.count - 1) / 2
        let maximumIndex = numbers.count - 1
        if target < numbers[0] || target > numbers[maximumIndex] {
            return false
        }
        if(target > numbers[middleIndex]) {
            let slice = Array(numbers[middleIndex+1...maximumIndex])
            return binarySearch(target: target, in: slice)
        }
        if(target < numbers[middleIndex]) {
            let slice = Array(numbers[0...middleIndex - 1])
            return binarySearch(target: target, in: slice)
        }
        if(target == numbers[middleIndex]) {
            return true
        }
        return false
    }
}
