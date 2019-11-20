//
//  BinaryTree.swift
//  Algorithms-Swift
//
//  Created by Nabil Safatli on 2019-11-22.
//  Copyright © 2019 Nabil. All rights reserved.
//

import Foundation

final class BinaryTreeNode {
    var data: Int
    var leftNode: BinaryTreeNode?
    var rightNode: BinaryTreeNode?

    init(value: Int) {
        self.data = value
    }

    func insert(value: Int) {
        guard data != value else {
            print("Already contains this number")
            return
        }

        if(value > data) {
            if let rightNode = rightNode {
                rightNode.insert(value: value)
            } else {
                rightNode = BinaryTreeNode(value: value)
            }
        } else {
            if let leftNode = leftNode {
                leftNode.insert(value: value)
            } else {
                leftNode = BinaryTreeNode(value: value)
            }
        }
    }

    func log() {
        leftNode?.log()
        print(" \(data) ")
        rightNode?.log()
    }

    static func execute() {
        let binaryTree = BinaryTreeNode(value: 0)
        for i in 1...10 {
            binaryTree.insert(value: i)
        }
        binaryTree.log()
    }
}
