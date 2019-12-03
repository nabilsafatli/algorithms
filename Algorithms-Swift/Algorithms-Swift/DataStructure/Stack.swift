//
//  Stack.swift
//  Algorithms-Swift
//
//  Created by Nabil Safatli on 2019-12-03.
//  Copyright © 2019 Nabil. All rights reserved.
//

import Foundation

class Stack<T> {
    private var items = [T]()
    
    func append(item: T) {
        items.append(item)
    }
    
    func pop(item: T) -> T? {
        return items.popLast()
    }
    
    func log() {
        guard items.count > 0 else {
            print("The stack is empty")
            return
        }
        for i in stride(from: items.count - 1, through: 0, by: -1) {
            print(items[i])
        }
    }

    func clear() {
        items = []
    }

    static func execute() {
        let stack = Stack<Int>()
        for i in 0..<10 {
            stack.append(item: i)
        }
        stack.log()
        stack.clear()
    }
}
