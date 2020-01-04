//
//  DeleteNodesForest.swift
//  Algorithms-Swift
//
//  Created by Nabil Safatli on 2020-01-04.
//  Copyright © 2020 Nabil. All rights reserved.
//

/*
 Given the root of a binary tree, each node in the tree has a distinct value.

 After deleting all nodes with a value in to_delete, we are left with a forest (a disjoint union of trees).

 Return the roots of the trees in the remaining forest.  You may return the result in any order.

  

 Example 1:

 Input: root = [1,2,3,4,5,6,7], to_delete = [3,5]
 Output: [[1,2,null,4],[6],[7]]

  

 Constraints:

     The number of nodes in the given tree is at most 1000.
     Each node has a distinct value between 1 and 1000.
     to_delete.length <= 1000
     to_delete contains distinct values between 1 and 1000.
 */

import Foundation


private class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}

class Solution {
    private func delNodes(_ root: TreeNode?, _ to_delete: [Int]) -> [TreeNode?] {
        guard let root = root else { return [] }
        let toDelete = Set(to_delete)
        var forest = [TreeNode?]()
        if !toDelete.contains(root.val) {
            forest.append(root)
        }
        _ = dfs(root, toDelete, &forest)
        return forest
    }
    
    private func dfs(_ node: TreeNode?, _ to_delete: Set<Int>, _ forest: inout [TreeNode?]) -> TreeNode? {
        guard let node = node else { return nil }
        node.left = dfs(node.left, to_delete, &forest)
        node.right = dfs(node.right, to_delete, &forest)
        if to_delete.contains(node.val) {
            if node.left != nil {
                forest.append(node.left)
            }
            if node.right != nil {
                forest.append(node.right)
            }
            return nil
        }
        return node
    }
}
