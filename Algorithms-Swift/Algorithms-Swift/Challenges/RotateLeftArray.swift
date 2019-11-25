//
//  RotateLeftArray.swift
//  Algorithms-Swift
//
//  Created by Nabil Safatli on 2019-11-23.
//  Copyright © 2019 Nabil. All rights reserved.
//
/*
A left rotation operation on an array shifts each of the array's elements unit to the left.
For example, if 2 left rotations are performed on array [1,2,3,4,5], then the array would become [3,4,5,1,2].
Given an array A of integers and a number, D , perform left rotations on the array.
Return the updated array to be printed as a single line of space-separated integers.
 
 https://www.hackerrank.com/challenges/ctci-array-left-rotation
*/

import Foundation

private extension Array {
    func chunked(into size: Int) -> [[Element]] {
        return stride(from: 0, to: count, by: size).map {
            Array(self[$0 ..< Swift.min($0 + size, count)])
        }
    }
}

class RotateLeftArray {
    func rotLeft(a: [Int], d: Int) -> [Int] {
        var value: Int = d
        if value > a.count {
            value = d/a.count
        }
        guard d > 0 else {
            return a
        }
        var array = a
        let result = array.chunked(into: d).first!
        array.removeSubrange(0..<value)
        array.append(contentsOf: result)

        return array
    }
    
    func rotLeft_2(a: [Int], d: Int) -> [Int] {
        var value: Int = d
        if value > a.count {
            value = d/a.count
        }
        guard d > 0 else {
            return a
        }
        var array = a
        let firstElement = array.remove(at: 0)
        array.append(firstElement)

        return rotLeft(a: array, d: d - 1)
    }

    static func execute() {
        var string = "["
        let result = RotateLeftArray().rotLeft(a: [1, 2, 3, 4, 5], d: 4)
        for i in 0...result.count - 1 {
            string += " \(result[i]) "
        }
        string += "]"
        print("RotateLeftArray [1 2 3 4 5] => \(string)")
    }
}
