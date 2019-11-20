//
//  BinarySearch.swift
//  Algorithms-Swift
//
//  Created by Nabil Safatli on 2019-11-09.
//  Copyright © 2019 Nabil. All rights reserved.
//

import Foundation

struct BinarySearch {
    func search(target: Int, in numbers: [Int]) -> Bool {
        let middleIndex = (numbers.count - 1) / 2
        let maximumIndex = numbers.count - 1
        if target < numbers[0] || target > numbers[maximumIndex] {
            return false
        }
        if(target > numbers[middleIndex]) {
            let slice = Array(numbers[middleIndex+1...maximumIndex])
            return search(target: target, in: slice)
        }
        if(target < numbers[middleIndex]) {
            let slice = Array(numbers[0...middleIndex - 1])
            return search(target: target, in: slice)
        }
        if(target == numbers[middleIndex]) {
            return true
        }
        return false
    }
    
    static func execute() {
        let numbers = [0,5,6,19,21,241,499,599,2122,5000,10000]
        let containsNumber = BinarySearch().search(target: 5199, in: numbers)
        if containsNumber {
            print("YES! there it is :)")
        } else {
            print(":( it doesn't contain the number")
        }
    }
}
