//
//  Queue.swift
//  Algorithms-Swift
//
//  Created by Nabil Safatli on 2019-12-03.
//  Copyright © 2019 Nabil. All rights reserved.
//

import Foundation

class Queue<T> {
    private var items = [T]()

    func append(item: T) {
        items = [item] + items
    }

    func pop() -> T {
        return items.removeFirst()
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
        let queue = Queue<Int>()
        for i in 0..<10 {
            queue.append(item: i)
        }
        queue.log()
        queue.clear()
    }
}
