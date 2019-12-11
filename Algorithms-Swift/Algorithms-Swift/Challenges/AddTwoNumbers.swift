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
        return finalNode
    }

    static func getNumber(_ listNode: ListNode?) -> UInt64 {
        guard let listNode = listNode else { return 0 }
        var number: UInt64 = 0
        var currentNode: ListNode? = listNode
        var multiplier: UInt64 = 1
        while let node = currentNode {
            number += UInt64(node.val) * multiplier
            currentNode = node.next
            multiplier = multiplier * 10
        }
        return number
    }

    static func buildListNode(_ number: UInt64) -> ListNode? {
        let firstDigit = Int(number % 10)
        let headNode = ListNode(firstDigit)
        var currentNumber = number/10
        var currentNode: ListNode? = headNode

        while currentNumber > 0 {
            let digit = Int(currentNumber % 10)
            currentNode?.next = ListNode(digit)
            currentNode = currentNode?.next
            currentNumber = currentNumber/10
        }
        return headNode
    }

    static func execute() {
        let l1_2 = ListNode(1)
        let l1_0_0 = ListNode(0)
        let l1_0_1 = ListNode(0)
        let l1_0_2 = ListNode(0)
        let l1_0_3 = ListNode(0)
        let l1_0_4 = ListNode(0)
        let l1_0_5 = ListNode(0)
        let l1_0_6 = ListNode(0)
        let l1_0_7 = ListNode(0)
        let l1_0_8 = ListNode(0)
        let l1_0_9 = ListNode(0)
        let l1_0_10 = ListNode(0)
        let l1_1 = ListNode(1)
        l1_2.next = l1_0_0
        l1_0_0.next = l1_0_1
        l1_0_1.next = l1_0_2
        l1_0_2.next = l1_0_3
        l1_0_3.next = l1_0_4
        l1_0_4.next = l1_0_5
        l1_0_5.next = l1_0_6
        l1_0_6.next = l1_0_7
        l1_0_7.next = l1_0_8
        l1_0_8.next = l1_0_9
        l1_0_9.next = l1_0_10
        l1_0_10.next = l1_1

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
