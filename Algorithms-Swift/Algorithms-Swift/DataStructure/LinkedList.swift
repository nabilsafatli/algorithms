//
//  LinkedList.swift
//  Algorithms-Swift
//
//  Created by Nabil Safatli on 2019-12-02.
//  Copyright © 2019 Nabil. All rights reserved.
//

import Foundation

class LinkedList<T> {
    private var head: Node<T>
    
    init(data: T) {
        head = Node<T>(data: data)
    }

    func insert(data: T) {
        head.insert(data: data)
    }

    func log() {
        print(head.data)
        guard let next = head.next else {
            return
        }
        print(next.data)
        next.log()
    }

    static func execute() {
        let linkedList = LinkedList<Int>(data: 10)
        for i in 0..<400 {
            linkedList.insert(data: i)
        }

        linkedList.log()
    }
}

private class Node<T> {
    var data: T
    var next: Node<T>?
    weak var previous: Node<T>?

    init(data: T) {
        self.data = data
    }

    func insert(data: T) {
        guard let next = next else {
            let node = Node(data: data)
            node.previous = self
            self.next = node
            return
        }
        next.insert(data: data)
    }

    func log() {
        print(data)
        next?.log()
    }
}
