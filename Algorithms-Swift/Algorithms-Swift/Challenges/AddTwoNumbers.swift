//
//  AddTwoNumbers.swift
//  Algorithms-Swift
//
//  Created by Nabil Safatli on 2019-12-08.
//  Copyright © 2019 Nabil. All rights reserved.
//
/*
 You are given two non-empty linked lists representing two non-negative integers.
 The digits are stored in reverse order and each of their nodes contain a single digit.
 Add the two numbers and return it as a linked list.
 You may assume the two numbers do not contain any leading zero, except the number 0 itself.

 Example:
 Input: (2 -> 4 -> 3) + (5 -> 6 -> 4)
 Output: 7 -> 0 -> 8
 Explanation: 342 + 465 = 807.
*/

import Foundation

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

class AddTwoNumbers {
    static func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        guard let l1 = l1, let l2 = l2 else { return nil }
        let firstNumber = getNumber(l1)
        let secondNumber = getNumber(l2)
        let total = firstNumber + secondNumber
        let finalNode = buildListNode(total)
        print("Final Node number: \(getNumber(finalNode))")
        return finalNode
    }

    static func getNumber(_ listNode: ListNode?) -> UInt64 {
        guard let listNode = listNode else { return 0 }
        var number: UInt64 = 0
        var currentNode: ListNode? = listNode
        var counter = 0
        var multiplier = 1
        while(currentNode != nil) {
            multiplier = 1
            for _ in 0..<counter {
                multiplier = multiplier * 10
            }
            number += UInt64(currentNode!.val * multiplier)
            counter += 1
            currentNode = currentNode!.next
        }
        return number
    }

    static func buildListNode(_ number: UInt64) -> ListNode? {
        var headNode: ListNode?
        var currentNumber = number
        var currentNode: ListNode?
        if currentNumber == 0 {
            return ListNode(0)
        }
        while currentNumber > 0 {
            if currentNode == nil {
                headNode = ListNode(Int(currentNumber%10))
                currentNode = headNode
            } else {
                currentNode?.next = ListNode(Int(currentNumber%10))
                currentNode = currentNode?.next
            }
            currentNumber = currentNumber/10
        }
        return headNode
    }

    static func execute() {
        let l1_0 = ListNode(0)
        let l2_0 = ListNode(0)
        
        if let result = addTwoNumbers(l1_0, l2_0) {
            print("# result: \(result)")
        } else {
            print("No valid result for Adding Two Numbers")
        }
    }

    
    static func execute_caseA() {
        let l1_2 = ListNode(2)
        let l1_4 = ListNode(4)
        let l1_3 = ListNode(3)
        l1_2.next = l1_4
        l1_4.next = l1_3
        
        let l2_5 = ListNode(5)
        let l2_6 = ListNode(6)
        let l2_4 = ListNode(4)
        l2_5.next = l2_6
        l2_6.next = l2_4
        
        if let result = addTwoNumbers(l1_2, l2_5) {
            print("# result: \(result)")
        } else {
            print("No valid result for Adding Two Numbers")
        }
    }
}
