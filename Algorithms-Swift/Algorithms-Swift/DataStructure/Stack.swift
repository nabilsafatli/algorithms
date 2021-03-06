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
    
    func pop() -> T? {
        return items.removeLast()
    }
    
    func log() {
        guard items.count > 0 else {
            print("The stack is empty")
            return
        }
        for item in items {
            print(item)
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
