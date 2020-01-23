//
//  MaxSumRectangle.swift
//  Algorithms-Swift
//
//  Created by Nabil Safatli on 2020-01-23.
//  Copyright © 2020 Nabil. All rights reserved.
//

import Foundation

class MaxSumRectangle {
    static func execute() {
        let firstRow =  [6,  -5,  -7,  4, -4]
        let secondRow = [-9,  3,  -6,  5,  2]
        let thirdRow =  [-10, 4,   7, -6,  3]
        let forthRow =  [-8,  9,  -3,  3, -7]
        let matrix = [firstRow, secondRow, thirdRow, forthRow]
        
        let totalSum = findMaxSum(in: matrix)
        print("Total Sum is: \(totalSum)")
    }
    
    static func findMaxSum(in matrix: [[Int]]) -> Int {
        var highestSum = 0
        var topLeft = 0
        for i in 0..<matrix.count {
            for j in 0..<matrix[i].count {
                let slicedMatrix = slice(matrix: matrix, from: i, to: j)
                let matrixSum = getTotalSum(in: slicedMatrix)
                if matrixSum > highestSum {
                    highestSum = matrixSum
                }
            }
        }
        return highestSum
    }
    
    static func getTotalSum(in matrix: [[Int]]) -> Int {
        var totalSum = 0
        for i in 0..<matrix.count {
            for j in 0..<matrix[i].count {
                totalSum += matrix[i][j]
            }
        }
        return totalSum
    }
    
    static func slice(matrix: [[Int]], from x: Int, to y: Int) -> [[Int]] {
        if x == 0 && y == 0 {
            return [[matrix[x][y]]]
        }
        var slicedMatrix = [[Int]]()
        for i in x..<matrix.count {
            var row = [Int]()
            for j in 0..<y {
                row.append(matrix[i][j])
            }
            slicedMatrix.append(row)
        }
        return slicedMatrix
    }
}
